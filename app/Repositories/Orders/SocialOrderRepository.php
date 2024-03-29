<?php

/*
|--------------------------------------------------------------------------
| QRSaaS Web Order
|--------------------------------------------------------------------------
*/

namespace App\Repositories\Orders;

use App\Models\SimpleDelivery;
use Illuminate\Support\Facades\Validator;
use Cart;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Redirect;

class SocialOrderRepository extends BaseOrderRepository implements OrderTypeInterface
{

    private $orderMessage=""; //The message we will send

    public function validateData(){
        //Additionally in Whatsapp in delivery, we need delivery_area
        $additionalRules=[];
        if($this->request->delivery_method=="delivery"){
           $additionalRules= [
               'deliveryAreaId' => ['required','not_in:0'],
           ];
       }

        $validator=Validator::make($this->request->all(), array_merge($this->expeditionRules(),$this->paymentRules(),$additionalRules));
        if($validator->fails()){$this->status=false;}
        return $validator;
    }

    public function makeOrder(){

        //From Parent - Construct the order
        $this->constructOrder();

        //From trait - set fee and time slot
        if($this->request->delivery_method=="delivery"){
            //In Social, we don't have common, id, instead there, we have a string
            $this->order->whatsapp_address=$this->request->address_id;
            if($this->request->deliveryAreaId){
                $this->order->delivery_price = SimpleDelivery::findOrFail($this->request->deliveryAreaId)->cost;
            }else{
                $this->order->delivery_price = 0;
            }

            $this->order->update();
        }
        $this->setTimeSlot();

        //From parent - check if order is ok - min price. -- Only for pickup - dine in should not have minimum
        $resultFromValidateOrder=$this->validateOrder();
        if($resultFromValidateOrder->fails()){return $resultFromValidateOrder;}

         //From trait - make attempt to pay order or get payment link
         $resultFromPayOrder=$this->payOrder();
         if($resultFromPayOrder->fails()){return $resultFromPayOrder;}

        //Local - set Initial Status
        $this->setInitialStatus();

         //Local - clear cart
         $this->clearCart();

         //Local - Notify
         $this->notify();

        //At the end, return that all went ok
        return Validator::make([], []);
    }


    
    public function setInitialStatus(){
        //Set the just created status
        $this->order->status()->attach(1, ['user_id'=>$this->vendor->user->id, 'comment'=>'Social Network order']);

        //Set automatically approved by admin - since it it social
       //$this->order->status()->attach(2, ['user_id'=>1, 'comment'=>__('Automatically approved by admin')]);
    }

    public function redirectOrInform(){
        if($this->status){
            //Redirect to Social Profile
            if(config('settings.whatsapp_ordering')){

               //Return to proxy page and  then redirect
               //return redirect(route('order.successwhatsapp',['order'=>$this->order]));

               $message=$this->order->getSocialMessageAttribute(true);
               $url = 'https://api.whatsapp.com/send?phone='.$this->vendor->whatsapp_phone.'&text='.$message;
               return Redirect::to($url);
            }else if(config('settings.facebook_ordering')){

            }
        }else{
            //There was some error, return back to the order page
            return redirect()->route('cart.checkout')->withInput();
        }
    }

    private function clearCart(){
        Cart::clear();
    }

    private function notify(){
        $this->notifyOwner();
    }
}
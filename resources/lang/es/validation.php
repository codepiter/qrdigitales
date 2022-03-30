<?php

return array (
  'accepted' => ':attribute debe ser aceptado',
  'active_url' => ':attribute no es una URL válida',
  'after' => 'La  :attribute debe ser una fecha posterior a :date',
  'after_or_equal' => 'La  :attribute debe ser una fecha posterior o igual a :date',
  'alpha' => ':attribute solo puede contener letras.',
  'alpha_dash' => ':attribute solo puede contener letras, números, guiones y guiones bajos.',
  'alpha_num' => ':attribute solo puede contener letras y  números.',
  'array' => ':attribute debe ser un array.',
  'before' => 'La :attribute debe ser una fecha anterior a :date.',
  'before_or_equal' => 'La :attribute debe ser una fecha anterior o igual a :date',
  'between' => 
  array (
    'array' => ':attribute debe estar entre :min y :max artículos',
    'file' => ':attribute debe estar entre :min y :max kilobytes',
    'numeric' => ':attribute debe estar entre :min y :max',
    'string' => ':attribute debe estar entre :min y :max caracteres',
  ),
  'boolean' => 'El campo :attribute debe ser verdadero o falso.',
  'confirmed' => 'La confirmación de :attribute no coincide',
  'custom' => 
  array (
    'address_id' => 
    array (
      'required' => 'Seleccione su dirección',
    ),
    'dinein_table_id' => 
    array (
      'required' => 'Seleccione su mesa',
    ),
    'general_payment_error_action' => 
    array (
      'required' => 'El intento de pago falló. Si es el administrador del sistema, verifique el problema en el proveedor de pagos',
    ),
    'link_payment_error_action' => 
    array (
      'required' => 'Método de pago basado en enlace no encontrado',
    ),
    'mollie_error_action' => 
    array (
      'required' => 'Error al obtener el enlace de pago',
    ),
    'order_price' => 
    array (
      'min' => 'El pedido mímino es :min. Agregue algunos artículos más en el carrito.',
    ),
    'paypal_payment_approval_missing' => 
    array (
      'required' => 'No pudimos obtener el enlace de pago de PayPal',
    ),
    'paypal_payment_error_action' => 
    array (
      'required' => 'El intento de pago falló porque se requiere una acción adicional antes de que se pueda completar',
    ),
    'paystack_error_action' => 
    array (
      'required' => 'Error en la comunicación con PayStack',
    ),
    'stripe_payment_error_action' => 
    array (
      'required' => 'El intento de pago falló porque se requiere una acción adicional antes de que se pueda completar',
    ),
    'stripe_payment_failure' => 
    array (
      'required' => 'El intento de pago falló por varias otras razones, como no tener fondos disponibles. Verifique los datos proporcionados',
    ),
  ),
  'date' => ':attribute No es una fecha válida',
  'date_equals' => ':attribute debe ser una fecha igual a :date',
  'date_format' => ':attribute no coincide con el formato :format.',
  'different' => ':attribute y :other deben ser diferentes.',
  'digits' => ':attribute debe ser :digits dígitos.',
  'digits_between' => ':attribute debe estar entre :min y :max dígitos.',
  'dimensions' => ':attribute tiene dimensiones de imagen no válidas.',
  'distinct' => 'El campo :attribute tiene un valor duplicado.',
  'email' => ':attribute Debe ser una dirección de correo electrónico válida.',
  'ends_with' => ':attribute debe terminar con uno de los siguientes:  :values.',
  'exists' => ':attribute es inválido',
  'file' => ':attribute debe ser un archivo.',
  'filled' => ':attribute debe tener un valor',
  'gt' => 
  array (
    'array' => ':attribute debe tener más de :value items.',
    'file' => ':attribute debe ser mayor a :value kilobytes',
    'numeric' => ':attribute debe ser mayor  a :value.',
    'string' => ':attribute debe ser mayor a :value carácteres.',
  ),
  'gte' => 
  array (
    'array' => ':attribute debe tener :value items o más.',
    'file' => ':attribute debe ser mayor o igual a :value kilobytes.',
    'numeric' => ':attribute debe ser mayor o igual a :value.',
    'string' => ':attribute debe ser mayor o igual a :value carácteres.',
  ),
  'image' => ':attribute debe ser una imagen.',
  'in' => ':attribute es inválido.',
  'in_array' => ':attribute no existe en :other.',
  'integer' => ':attribute debe ser un entero.',
  'ip' => ':attribute debe ser una dirección IP válida.',
  'ipv4' => ':attribute debe ser una dirección IPv4 válida.',
  'ipv6' => ':attribute debe ser una dirección IPv6 válida.',
  'json' => ':attribute debe ser una cadena JSON válida.',
  'lt' => 
  array (
    'array' => ':attribute  debe ser menor o igual que :value items',
    'file' => ':attribute  debe ser menor  que :value kilobytes',
    'numeric' => ':attribute  debe ser menor o igual que :value',
    'string' => ':attribute  debe ser menor  que :value  carácteres.',
  ),
  'lte' => 
  array (
    'array' => ':attribute no debe tener más de :value items.',
    'file' => ':attribute debe ser menor o igual que :value kilobytes',
    'numeric' => ':attribute  debe ser menor o igual que :value',
    'string' => ':attribute debe ser menor o igual que :value carácteres.',
  ),
  'max' => 
  array (
    'array' => ':attribute puede que no tenga más de :max items.',
    'file' => ':attribute puede no ser mayor que :max kilobytes',
    'numeric' => ':attribute puede no ser mayor que :max',
    'string' => ':attribute puede no ser mayor que :max carácteres.',
  ),
  'mimes' => ':attribute debe ser un archivo de tipo: :values.',
  'mimetypes' => ':attribute debe ser un archivo de tipo: :values.',
  'min' => 
  array (
    'array' => ':attribute debe tener al menos :min items.',
    'file' => ':attribute debe ser como mínimo :min kilobytes',
    'numeric' => ':attribute debe ser al menos :min.',
    'string' => ':attribute debe ser como mínimo :min carácteres.',
  ),
  'multiple_of' => ':attribute debe ser un múltiplo de :value',
  'not_in' => 'La selección de :attribute es inválido.',
  'not_regex' => 'El formato de :attribute es inválido',
  'numeric' => ':attribute debe ser un número.',
  'password' => 'La contraseña es incorrecta.',
  'present' => 'El campo :attribute debe estar presente.',
  'regex' => 'El formato de :attribute es inválido.',
  'required' => 'El campo :attribute es requerido.',
  'required_if' => 'El campo :attribute es obligatorio cuando :other es :value.',
  'required_unless' => 'El campo :attribute es obligatorio a menos que
:other no están en :values.',
  'required_with' => 'El campo :attribute es requerido cuando :values están presentes.',
  'required_with_all' => 'El campo :attribute es requerido cuando :values están presentes.',
  'required_without' => 'El campo :attribute es requerido cuando :values no están presentes.',
  'required_without_all' => 'El campo  :attribute  es obligatorio cuando ninguno de :values está presente.',
  'same' => ':attribute y :other deben coincidir',
  'size' => 
  array (
    'array' => ':attribute debe contener :size items.',
    'file' => ':attribute debe ser de :size kilobytes.',
    'numeric' => ':attribute debe ser :size.',
    'string' => ':attribute debe contener :size carácteres.',
  ),
  'starts_with' => ':attribute debe comenzar con uno de los siguientes :values.',
  'string' => ':attribute debe ser una cadena.',
  'timezone' => ':attribute debe ser una zona válida.',
  'unique' => ':attribute ya se ha tomado.',
  'uploaded' => ':attribute no se pudo cargar.',
  'url' => 'El formato de :attribute es inválido',
  'uuid' => ':attribute debe ser un UUID válido.',
);

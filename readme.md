# Menu Digital

## License

The Laravel framework is open-source software licensed under the [MIT license](https://opensource.org/licenses/MIT).

## ENV
SHOW_DEMO_CREDENTIALS=true
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel
DB_PASSWORD=laravel


MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=
MAIL_FROM_ADDRESS='test@example.com'
MAIL_FROM_NAME='App Demo'


## Clearing cache
sail artisan cache:clear
ddcache
sail artisan config:cache
sail artisan config:clear
sail artisan route:clear
sail artisan config:cache
sail artisan route:cache
sail artisan optimize

## Create new module
sail artisan module:make Module

## Default .env
[.env](https://paste.laravel.io/2fe670c7-f66b-443e-9e79-b5fa6618360b)
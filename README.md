# install dependencies
composer install
npm install

# create database
create database named 'laravel-test'

# generate tables
run 'php artisan migrate' to add tables to the database

# add data to tables
run 'php artisan db:seed' to add data to the tables

# run the application
run 'php artisan serve' to run the application

# PeriFinder

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 17.0.5.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.


Later, get on the API File, and execute the SQL queries of db.SQL inside of a sql database motor, the used here is Mysql, so in case of swapping of DB motor, you need to change the mysql Import, and you have to change some code on the API.js(to run it use node API.js and you will get the sucess warning if you got it correctly, to enter on the API Route is `http://localhost:3000/api/componentes`,if not, when you enter on the API Route, you will get on the terminal the error),And most probably you have to change the user/password to connect the database with the API, On this case i recommend if its not for production, to use root/root user so won't have access problems.

IF DOES NOT WORK, TRY TO ACTIVATE ON TASK MANAGER THE MOTOR PROCESS(In case of Mysql is MYSQL80)


## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

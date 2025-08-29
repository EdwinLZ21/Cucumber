Feature: Iniciar sesion

Background:
  Given estoy en el navegador

Scenario Outline: Iniciar sesion con credenciales validas
  Given que estoy en la pagina de inicio de sesion
  When ingreso el usuario "<usuario>" y la contrasena "<contrasena>"
  Then deberia ver el mensaje de bienvenida "<mensaje>"

  Examples:
    | usuario      | contrasena | mensaje               |
    | user1        | pass1      | Bienvenido user1!     |
    | user2        | pass2      | Bienvenido user2!     |
    | admin        | adminpass  | Bienvenido admin!     |
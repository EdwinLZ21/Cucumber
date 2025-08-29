Feature: Iniciar sesion

Scenario: Usuario inicia sesion con credenciales validas
    Given El usuario esta en la pagina de inicio de sesion
    When El usuario ingresa "usuario_valido" y "contrasena_valida"
    Then El usuario deberia ver el mensaje de bienvenida "Bienvenido, usuario_valido!"  

Scenario: Usuario intenta iniciar sesion con credenciales invalidas
    Given El usuario esta en la pagina de inicio de sesion
    When El usuario ingresa "usuario_invalido" y "contrasena_invalida"
    Then El usuario deberia ver el mensaje de error "Credenciales invalidas. Por favor, intente de nuevo."
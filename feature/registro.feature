Feature: Registro de usuarios
    Como usuario nuevo
    Quiero registrarme en la plataforma
    Para poder acceder a sus funcionalidades
    
    Scenario: Registro exitoso con datos válidos
        Given que estoy en la página de registro
        When ingreso un nombre de usuario válido
        And ingreso una contraseña válida
        And confirmo la contraseña
        And hago clic en el botón de "Registrarse"
        Then debería ver un mensaje de éxito indicando que el registro fue exitoso
    
    Scenario: Registro fallido con nombre de usuario ya existente
        Given que estoy en la página de registro
        When ingreso un nombre de usuario que ya existe
        And ingreso una contraseña válida
        And confirmo la contraseña
        And hago clic en el botón de "Registrarse"
        Then debería ver un mensaje de error indicando que el nombre de usuario ya está en uso
    
    
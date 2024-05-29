Feature: logeo de usuario con email y contraseña válido

  Background:
    * header Content-Type = 'application/json'
    * url regresIn

  @login
  Scenario: Given tenemos nombre de usuario y clave válido, debemos obtener token válido
    * path "api/register"
    And request
    """
    {
    "email": "#(email)",
    "password": "#(password)"
}
    """
    When method POST
    Then status 200
    * def token = response.token

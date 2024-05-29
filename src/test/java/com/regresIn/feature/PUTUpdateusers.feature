Feature: Actualizar usuario

  Background:
    Given url regresIn
    * def createNewUserResponseBody = read('classpath:com/regresIn/data/requestNuevoUsuario.json')
    * def random_string =
    """
     function(s) {
       var text = "";
       var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
       for (var i = 0; i < s; i++)
         text += possible.charAt(Math.floor(Math.random() * possible.length));
       return text;
     }
     """
    * def sessionId =  random_string(5)
    * createNewUserResponseBody.name = sessionId
    * print createNewUserResponseBody
    * call read('classpath:com/regresIn/data/login.feature')

  Scenario: Actualización de usuario
    And path "/api/users/2"
    And header Authorization = customerToken
    And request createNewUserResponseBody
    When method POST
    Then status 201
    Then match response.name contains createNewUserResponseBody.name
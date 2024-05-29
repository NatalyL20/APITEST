Feature: crear usuario

  Background:
    Given url regresIn
    * def createNewUserResponseBody = read('classpath:com/regresIn/data/requestNuevoUsuario.json')
    * print createNewUserResponseBody
    * call read('classpath:com/regresIn/data/login.feature')

  @Positive
  Scenario: usuario intenta crear un nuevo cliente con sus credenciales
    And path "/api/users"
    And header Authorization = customerToken
    And request createNewUserResponseBody
    When method POST
    Then status 201
    Then match response.name contains createNewUserResponseBody.name
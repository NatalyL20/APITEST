Feature: Listar solo un usuario
  Background:
    Given url regresIn

  Scenario: obtener el usuario indicado
    And path "/api/users/2"
    When method GET
    Then status 200
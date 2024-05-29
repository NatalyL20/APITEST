Feature: Lista de usuarios
  Background:
    Given url regresIn

  Scenario: obtener lista de usuarios
    And path "/api/users"
    And param page = "2"
    When method GET
    Then status 200

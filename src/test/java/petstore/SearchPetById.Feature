Feature: Consultar una mascota por ID

  Background:
    * url 'https://petstore.swagger.io'

  Scenario: Consultar una mascota por ID
    * def result = call read('AddPet.feature')
    * def petId = result.petId

    Given path '/v2/pet/' + petId
    When method GET
    Then status 200
    And match response.id == petId
    * print 'Pet Id:', petId
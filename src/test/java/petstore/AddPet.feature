Feature: Añadir una nueva mascota

  Background:
    * url 'https://petstore.swagger.io'

  Scenario:  Añadir una nueva mascota
    * def addPetRequest = karate.read('classpath:AddPetRequest.json')

    Given path '/v2/pet'
    And request addPetRequest
    When method POST
    Then status 200

    * def petId = response.id
    * print 'Pet Id:', petId

    * def resultId = { petId: petId }
    * karate.set('result', resultId)
Feature: Buscar mascotas por estatus 'sold'

  Background:
    * url 'https://petstore.swagger.io'

  Scenario: Buscar mascotas por estatus 'sold'
    * def resultAdd = call read('AddPet.feature')
    * def resultUpdate = call read('UpdatePet.feature')
    * def petId = resultAdd.petId
    * def petName = resultUpdate.petName
    * def petStatus = resultUpdate.petStatus

    Given path '/v2/pet/findByStatus'
    And param status = petStatus
    When method GET
    Then status 200
    And match $..id contains petId
    And match $..name contains petName
    And match $..status contains petStatus
    * print 'Pet Id:', petId
    * print 'Pet Name:', petName
    * print 'Pet Status:', petStatus

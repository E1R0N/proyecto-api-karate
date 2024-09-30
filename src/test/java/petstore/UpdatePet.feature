Feature: Actualizar el estado de una mascota a 'sold'

  Background:
    * url 'https://petstore.swagger.io'

  Scenario: Actualizar el estado de una mascota a 'sold'
    * def result = call read('AddPet.feature')
    * def petId = result.petId
    * def updatePetRequest = karate.read('classpath:AddPetRequest.json')

    * updatePetRequest.name = 'newDoggie'
    * updatePetRequest.status = 'sold'
    * updatePetRequest.id = petId

    Given path '/v2/pet'
    And request updatePetRequest
    When method PUT
    Then status 200
    * print 'Mascota actualizada:', response

    * def petName = response.name
    * def petStatus = response.status

    * def resultName = { petName: petName }
    * def resultStatus = { petStatus: petStatus }
    * karate.set('result', resultName)
    * karate.set('result', resultStatus)
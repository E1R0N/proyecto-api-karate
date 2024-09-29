Feature: Actualizar el estado de una mascota a 'sold'

  Background:
    * url 'https://petstore.swagger.io'

  Scenario: Actualizar el estado de una mascota a 'sold'
    * def update_request =
      """
          {
        "id": 0,
        "category": {
        "id": 0,
        "name": "string"
        },
        "name": "doggie",
        "photoUrls": [
        "string"
        ],
        "tags": [
        {
        "id": 0,
        "name": "string"
        }
        ],
        "status": "sold"
        }
    """
    Given path '/v2/pet'
    And request update_request
    When method PUT
    Then status 200

    * def petName = response.name
    * def petStatus = response.status
    * print 'Pet Name:', petName
    * print 'Pet Status:', petStatus

    * def resultName = { petName: petName }
    * def resultStatus = { petStatus: petStatus }
    * karate.set('result', resultName)
    * karate.set('result', resultStatus)
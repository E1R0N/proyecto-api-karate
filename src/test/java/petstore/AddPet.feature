Feature: Añadir una nueva mascota

  Background:
    * url 'https://petstore.swagger.io'

  Scenario:  Añadir una nueva mascota
    # Agregar una mascota al inventario
    * def add_a_pet_request =
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
        "status": "available"
      }
      """
    Given path '/v2/pet'
    And request add_a_pet_request
    When method POST
    Then status 200

    * def petId = response.id
    * print 'Pet Id:', petId

    * def resultId = { petId: petId }
    * karate.set('result', resultId)
Feature: API AuthenticationCall

  Background:
    * def myFeature = call read('userDetailAut2.feature'){email:'eve.holt@reqres.in', password:'pistol'}
    * def authToken = myFeature.accessToken
    
    Scenario: GET call
    When url  'https://reqres.in/api/users?page=2'
    And headers Autherization = authToken
      
    When method GET
    Then status 204
    
Feature: API Authentication
  
  Background: 
    * url 'https://reqres.in/api/register'

  Scenario: Authentication test
   # * def params = """{ email = 'eve.holt@reqres.in', password = 'pistol'}"""

    #And form fields params
    #When path 'outh2/token'
    And form field email = 'eve.holt@reqres.in'
    And form field password = 'pistol'
    #And form field email = '#(email)'
    #And form field password = '#(password)'
    When method POST
    Then status 200
    * def accessToken = response.token
    Then print 'accessToken-------', accessToken


   #When path 'register'
    #Given path ''
    #And header Autherization = 'Bearer' + accessToken
    #When match GET
    #Then status 200
    
    
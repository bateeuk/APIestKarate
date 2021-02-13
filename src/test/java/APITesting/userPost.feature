Feature: post call test

  Background:
    #* def jsonPayload =  read('..//..//testdata//resultPost.json')
    * def jsonPayload1 =  read('..//..//testdata//resultPost.yaml')
    * url "https://reqres.in/api/users"
    #* header Content-Type = 'application/json'
    * header Content-Type = 'application/yaml'


  Scenario: create user details
    #And request jsonPayload
    And request jsonPayload1
    And param delay = 3
    #And headers {Content-Type : 'application/json', Accept: 'application/json'}
    #And headers {Content-Type : 'application/yaml', Accept: 'application/yaml'}
    When method POST
    Then status 201
    Then print 'response----', response
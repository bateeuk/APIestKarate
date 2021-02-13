Feature: Create new user
  Background:
    * url "https://reqres.in"
    * def mainUrl = "/api/users"
  Scenario: Create user from YAML file
    * def userdata = read('..//..//testdata//Createuser.yaml')
    Given path mainUrl
    And request userdata
    When method post
    Then status 201

  Scenario: Update user from YAML file
    * def userdata = read('..//..//testdata//updateuser.yaml')
    Given path mainUrl
    And request userdata
    When method put
    Then status 200

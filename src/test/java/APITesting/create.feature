Feature: create user without yaml
  Background:

    * url "https://reqres.in"
    * def mainUrl = "/api/users"

  Scenario: Create user without YAML file
    Given path mainUrl
    And request {"email" : "testing@test.com", "name" : "Anne"}
    When method post
    Then status 201

  Scenario: Create user from YAML file
    * def userdata = read('..//..//testdata//adduser.yaml')
    Given path mainUrl
    And request userdata
    When method post
    Then status 201

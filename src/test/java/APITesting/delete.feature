Feature: create user without yaml
  Background:

    * url "https://reqres.in"
    * def mainUrl = "/api/users/2"

  Scenario: Create and delete user without YAML file
    Given path mainUrl
    And request {"email" : "testing@test.com", "name" : "Anne"}
    When method post
    And def newUser = $..id
    Then status 201

    Given path mainUrl, newUser
    When method delete
    Then status 204
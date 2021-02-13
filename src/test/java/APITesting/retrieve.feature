Feature: Verifying user details

  Background:

    #* url "https://jsonplaceholder.typicode.com"
    #* def mainUrl = "/api/users/2"
    #* def expectedOutput = read('..//..//testdata//result3.json')
    * url "https://reqres.in"
    * header Accept = 'application/json'
    * def mainUrl = "/api/users/2"
    * def expectedOutput = read('..//..//testdata//result1.json')

  Scenario Outline: Verify GET request
    Given path <paths>
    And param <name> = <values>
    When method <method>
    Then status <status>
    Then print <exps>
    And match <expression><op1><op2>
    And match response.data.id == 2
    And match response.data.last_name != null
    * def job_code = response.data.job_code
    And match job_code == null


    Examples:
      | paths   | name | values | method | status | exps     | expression | op1 | op2            |
      | mainUrl | page | 2      | GET    | 200    | response | response = | =   | expectedOutput |
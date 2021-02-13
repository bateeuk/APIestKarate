Feature: user Details
  
  Background:
    * def expectedOutput = read('..//..//testdata//result2.json')
    #* def feature = read('userDetails.feature')
    * def result = call read('userDetails.feature')


  Scenario: request user 3 details
    Given url 'https://reqres.in/api/users/4'
    When method GET
    Then status 200
    And match response == expectedOutput
    Then print 'result--------', result
    * def first_name = result.response.data.first_name
    Then print 'first_name_value', first_name

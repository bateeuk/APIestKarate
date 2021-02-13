Feature: user Details
  
  Background:
    * def expectedOutput1 = read('..//..//testdata//result1.json')
    #* def expectedOutput1A = read('..//..//testdata//result1A.json')
    * def myVar = read('../../testdata/result1.yaml')
    * url 'https://reqres.in/api/users/'


   #@parallel = false
   Scenario: request user 2 details
     Given path 2
     When method GET
     Then status 200
     Then print response
     And match response == expectedOutput1[0]
     And match response == myVar
     And match response.data.id == 2
     And match response.data.last_name != null
     # -- to check if a field is not present use a variable
     #And match response.data.job_code == null [don't work]
     * def job_code = response.data.job_code
     And match job_code == null

   #@parallel = false
  @ignore
  Scenario: request user 2 details
    Given path 3
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput1[1]



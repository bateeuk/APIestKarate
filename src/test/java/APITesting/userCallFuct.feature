Feature: Call JavaScript Function

  Background:
    * def expectedOutput = read('..//..//testdata//result1A.json')

    Scenario: request user 4 details
      Given url 'https://reqres.in/api/users?page2'
      When method GET
      Then status 200
      * def data = response.data
      Then print 'data-------', data

      * def myFun  =
        """
          function(arg){
            for(i=0; i<arg.length; i++){
              if(args[i].id == 9){
                return arg[i]
                }
              }
            }
          """
      * def userDetails = call myFun data
      Then print 'userDetails---', userDetails
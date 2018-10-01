Feature: User Login Authentication Test

  Scenario: Create user
    Given url "http://localhost:5000/api/users"
    And header Content-Type = "application/json"
    And header Authorization = "beareer QpwL5tke4Pnpja7X"
    And request {"name":"morpheus","job":"leader"}
    When method post
    Then status 201
    * print ">>>> output >>>>", response

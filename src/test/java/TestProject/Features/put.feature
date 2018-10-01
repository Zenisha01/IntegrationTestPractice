Feature: User Login Authentication Test

  Scenario: Add user
    Given url "http://localhost:5000/api/users/2"
    And header Content-Type = "application/json"
    And header Authorization = "beareer QpwL5tke4Pnpja7X"
    And request {"name":"morpheus","job":"zion resident","updatedAt": "2018-10-01T10:27:30.232Z"}
    When method put
    Then status 200
    * print ">>>> output >>>>", response
Feature: User Login Authentication Test


  Scenario: Delete user
    Given url "http://localhost:5000/api/users/2"
    And header Authorization = "beareer QpwL5tke4Pnpja7X"
    When method delete
    Then status 204
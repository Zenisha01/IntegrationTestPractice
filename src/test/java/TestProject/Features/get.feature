Feature: User Login Authentication Test

  Scenario: Retrive User
    Given url "http://localhost:5000/api/users"
    And header Authorization = "beareer QpwL5tke4Pnpja7X"
    When method get
    Then status 200
    * print ">>>> output >>>>", response
    And match response ==
    """
  {
  "page": 1,
  "per_page": 3,
  "total": 12,
  "total_pages": 4,
  "data": [
  {
  "id": 1,
  "first_name": "George",
  "last_name": "Bluth",
  "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/calebogden/128.jpg"
  },
  {
  "id": 2,
  "first_name": "Janet",
  "last_name": "Weaver",
  "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg"
  },
  {
  "id": 3,
  "first_name": "Emma",
  "last_name": "Wong",
  "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/olegpogodaev/128.jpg"
  }
  ]
  }
      """
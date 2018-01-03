Feature: Verifying opencartworks product functionalities

  Scenario: User can search a particular product
    Given user is on homepage
    When user clicks on search bar
    And when user enters a particular product
    Then user should view the search result page

    Scenario: User can compare two products successfully
      Given user is on homepage
      When user clicks on any two products and clicks on Compare button
      Then user should view the product comparison page successfully

      Scenario: User adds a product to the cart successfully
        Given user is on Homepage
        When user clicks on a particular product
        And user clicks on Add to Cart
        Then the product should be added to shopping cart
Feature: Verifying opencartworks product functionalities

  Scenario: User can search a particular product
    Given user is on homepage
    When user clicks on search bar
    And when user enters a product name
    Then user can view the search result page with the product specified

    Scenario: User can compare two products successfully
      Given user is on homepage
      When user clicks on any two products and clicks on Compare button
      Then user can view the product comparison page successfully


  Scenario: User can view the recent products he viewed
    Given user is on homepage
    When user on recent view icon
    Then user can view the recent products successfully


  Scenario: User can Sort products in a category
    Given User is on homepage
    When user clicks on categories to view a product
    And clicks on sorting order
    Then user should be able to see the products in sorted order

  Scenario: user can view a product
    Given user is on homepage
    When user select one of the items
    Then user is on the Product detail page of the selected item
    And user can see details of the product


  Scenario: User can view the product description when he clicks on product image
    Given user is on homepage
    When user on clicks on product image
    Then user can view the product description successfully

  Scenario: User can view the enlarge image of a product
    Given user is on product information
    When user on clicks on product image
    Then user can view the enlarge image of a product


  Scenario: User can add products to wishlist only if he is an account holder
    Given User is on homepage
    When user clicks on a wishlist on a product
    Then user should see a message to login or  to create an account login page

  Scenario: user can review a product
    Given user is on product information
    When user selects write a review
    And user enters name / review / ratings
    Then user should see a successful message




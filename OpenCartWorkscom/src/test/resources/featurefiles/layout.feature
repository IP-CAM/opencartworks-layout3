Feature: Verify opencartworks functionality

  Scenario: User can change currency
    Given user is on Homepage
    When user clicks on particular currency
    Then all the products price should be viewed in that particular currency


  Scenario: User can change language
      Given user is on homepage
      When user mouse hovers and clicks on a language
      Then the webpage should be displayed in that particular language


  Scenario: User subscribes to a newsletter
    Given user is on Homepage
    When user clicks on a signup for newsletter bar
    And when user enters email address
    Then the user should be added successfully to newsletter subscription


  Scenario: User is not subscribed to a newsletter
    Given user is on Homepage
    When user clicks on a signup for newsletter bar
    And when user enters invalid email address
    Then the user should get a error message






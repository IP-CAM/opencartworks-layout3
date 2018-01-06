Feature: Verifying checkout functionality

  Scenario: Verify user can check out successfully
    Given User is on Checkout page
    When User enters all credentials and clicks on Confirm order
    Then User should get a successful message

  Scenario: User cannot checkout without credentials
    Given user is on shopping cart page
    When user clicks on checkout
    And when user doesnt enter all credentials and clicks on confirm order
    Then the user should get a error message


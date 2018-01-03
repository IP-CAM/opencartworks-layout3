Feature: Verify User Account Functionality

  As a user, I can register and login the opencartworks website so that i can view or buy the products

  Scenario: User successfully creates a opencartworks account
    Given user is on homepage
    When user clicks on register button
    And user enters all valid credentials
    Then account is created successfully

    Scenario: User successfully login with opencartworks account
      Given user is on homepage
      When user clicks on login button
      And user enters valid username and password
      Then user should be able to login successfully

  Scenario Outline: User successfully logins with social account

      Given user is on homepage
      When user clicks on login button
      And user enters valid details as <E-mail Address> and <Password>
      Then user should be able to login successfully

      Examples:

      |E-mail Address   ||Password|
      |msghema@gmail.com||hema    |
      |msghema@gmail.com||hema12  |

    Scenario: User Forgot password
      Given user who clicks on the password reset tab
      When user provide registered email address
      And user clicks the "continue" button
      Then an email with a password reset link is sent to the registered email address













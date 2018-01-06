Feature: Verify User login Functionality

  As a user, I can register and login the opencartworks website so that i can view or buy the products

  Scenario: User successfully creates an opencartworks account
    Given user is on homepage
    When user clicks on register button
    And user enters all valid credentials
    Then account is created successfully

  Scenario: User unable to create an opencartworks account
    Given user is on homepage
    When user clicks on register button
    And user enters all invalid credentials
    Then account is not created successfully


  Scenario Outline: User logins with opencartworks account
      Given user is on homepage
      When user clicks on login button
      And user enters valid <E-mail Address> and <Password>
      Then user should be able to get the respective <Message>

    Examples:

      |E-mail Address     ||Password   ||    Message  |
      |hema@gmail.com     ||test123    ||    Logged in|
      |hema@gmail.com     ||hema12     ||    Error    |

  Scenario: User successfully logins with social account

      Given user is on homepage
      When user clicks on login with your social account icon
      And user enters valid details as <E-mail Address> and <Password>
      Then user should be able to login successfully

  Scenario: User Forgot password
    Given user who clicks on the password reset tab
    When user provide registered email address
    And user clicks the "continue" button
    Then an email with a password reset link is sent to the registered email address


    Scenario: User logged out from the application
      Given the user is on logged in Opencartworks account
      When the user taps/clicks on the Logout link
      Then the user must be logged out from the Application.











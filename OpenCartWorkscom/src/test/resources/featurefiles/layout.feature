Feature: Verify opencartworks functionality

  Scenario: User can change currency
    Given user is on Homepage
    When user clicks on particular currency
    Then all the products price should be viewed in that particular currency

    Scenario: User can change language

      Given user is on homepage
      When user mouse hovers and clicks on a language
      Then the webpage should be displayed in that particular language

      Scenario: User can navigate to Social Media

        Given user is on homepage
        When user clicks on a social media
        Then user should be navigated to corresponding social media

        Scenario: User can scroll the webpage

          Given user is on homepage
          When user scrolls up or down
          Then the webpage should move accordingly

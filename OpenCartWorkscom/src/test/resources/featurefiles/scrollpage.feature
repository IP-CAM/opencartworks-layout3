Feature: Verifying Scroll Functionality

Scenario: User can scroll the webpage
Given user is on homepage
When user scrolls up or down
Then the webpage should move accordingly

Scenario: User can view the page header
Given user is on homepage
When user clicks on GotoTop icon
Then the webpage should move to the top of the webpage

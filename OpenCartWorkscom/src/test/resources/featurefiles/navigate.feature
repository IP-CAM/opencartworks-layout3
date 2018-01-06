Feature: Verifying navigation in opencartworks webpage

Scenario: User can navigate between categories
Given User is on homepage
When user clicks on categories to view a product
And go back to another category to view another product
Then user is able to navigate between categories

Scenario: User can navigate to Social Media
Given user is on homepage
When user clicks on a social media
Then user should be navigated to corresponding social media



  Scenario: User can write an email by clicking email link
    Given User is on homepage
    When user clicks on Email us
    Then user should be naviagted to compose email page

  Scenario Outline:
Given User is on opencartwork page
When User clicks on "<link>"
Then User is directed "<page>"

Examples:
|     link                            | |                page       |
|     About Us                        | |        About Us           |
|     FAQ                             | |        FAQ                |
|     Support 24/7 Page               | |        Support 27/7 Page  |
|     Product                         | |        Product            |
|     Specials                        | |        Specials           |
|     Affiliates                      | |        Affiliates          |
|     Brands                          | |        Brands             |
|     Gift Certificates               | |        Gift Certificates  |
|     Contact                         | |         Contact           |
|     Returns                         | |         Returns           |


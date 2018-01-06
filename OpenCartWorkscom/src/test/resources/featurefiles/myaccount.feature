Feature: Verifying My Account functionalities

Scenario Outline: User can navigate to my account sub categories
Given User is on Account page
When User clicks on <link>
Then User is directed <page>

Examples:
|     link                             |                page       |
|   Edit your account information      |   My Account Information  |
|     Change your password             |    Change Password        |
|  Modify your address book entries    |     Address Book Entries  |
|          Modify your wish list       |     My Wish List          |
|    View your order history           |  Order History            |
|    Downloads                         |   Account Downloads       |
|    Your Reward Points                |     Your Reward Points    |
|  View your return requests           |    Product Returns        |
|      Your Transactions               |    Your Transactions      |
|   Recurring payments                 |  Recurring Payments       |
|  Register for an affiliate account   | Your Affiliate Information|
| Subscribe / Unsubscribe to newsletter| Newsletter Subscription   |

Scenario: user can edit personal information
  Given user is on My Accounts page
  When he clicks on edit information
  And update with personal details and clicks on continue
  Then he should get a message as details updated succssfully

  Scenario: user can change password
    Given user is on My Accounts page
    When he clicks on change password
    And update with new password and clicks on continue
    Then he should get a message as password changed successfully

  Scenario: user can modify addressbook
    Given user is on My Accounts page
    When he clicks on Modify address book
    And update with new address and clicks on continue
    Then he should get a message as address changed successfully


  Scenario: user can remove a product from Wishlist
    Given user is on My Accounts page
    When he clicks on Wishlist
    And clicks on remove product icon and clicks on continue
    Then the product should be removed successfully

  Scenario: user can add a product from Wishlist
    Given user is on My Accounts page
    When he clicks on Wishlist
    And clicks on add to cart icon and clicks on continue
    Then the product should be added to cart successfully

  Scenario: user can remove a product from Wishlist
    Given user is on My Accounts page
    When he clicks on Wishlist
    And clicks on remove product icon and clicks on continue
    Then the product should be removed successfully



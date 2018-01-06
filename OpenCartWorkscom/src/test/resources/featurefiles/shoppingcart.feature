Feature: Verifying Shopping cart functionalities


  Scenario: User adds a product to the cart successfully
  Given user is on product page
  When user selects the size/colour/quantity
  And user clicks on Add to Cart button
  Then the product should be added to shopping cart

  Scenario: User cannot add a product to the cart
    Given user is on product page
    When user does not select the size/colour/quantity
    And user clicks on Add to Cart button
    Then the user should get a error message


  Scenario: Verify user can view the shopping basket
Given user added a product on shopping cart
When user click the shopping bag icon
Then user lands on the shopping bag page
And he can see the product in the shopping basket

  Scenario: Verify user can remove a product the shopping basket
    Given user added a product on shopping cart
    When user clicks on remove a product icon
    Then the product should be removed from the basket


  Scenario: Verify user can update the shopping basket
    Given user added a product on shopping cart
    When user changes quantity of a product
    And clicks on update a product icon
    Then the product should be removed from the basket



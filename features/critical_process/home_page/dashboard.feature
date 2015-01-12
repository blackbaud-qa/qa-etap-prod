Feature:Dashboard

  Scenario: load tiles
    Given I am logged into eTap
    When I click on the home tab
   Then I should all the tiles load

  Scenario: Running top donor report
    Given I am logged into eTap
    Given I have the top donor report displayed on the dashboard
    When  I click on the drop down and choose This Month
    Then I should see the page refresh with the top donors

  Scenario: Move tiles
    Given I am logged into eTap
    When I click on the move icon on any Tile
    And I drag the tile to the left
    Then I should see the tile moved to the left

  Scenario: Ensure site is secure
    Given I am logged into eTap
    And I click on URL
    And I remove the s from HTTPS
    And I click enter
    Then I should see HTTPS

  Scenario: Should be able to remove dashboard tile
    Given the Campaign Performance tile exists on my Dashboard
    When I click the x in the tile
    And click Ok
    Then the tile is removed


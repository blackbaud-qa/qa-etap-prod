Feature: Removing Dashboard Tile

  Background:
    Given I login into eTap

  Scenario: Should be able to remove dashboard tile
    Given the Campaign Performance tile exists on my Dashboard
    When I click the x in the tile
    And click OK
    Then the tile is removed

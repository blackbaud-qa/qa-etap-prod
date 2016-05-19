@crit_proc12
Feature: Select a layout and a tile

  Background:
  Given I login into eTap for CP12

  Scenario: Selecting the 3 column layout
    When I am on an account
    And I am on the home page
    And I click on Select Tiles and Layout
    And I click on 3 Equal Columns
    When I click Save
    Then I should see the homepage in 3 columns

  Scenario: Selecting a report tile
    When I am on an account
    And I am on the home page
    And I click on Select Tiles and Layout
    And I click on Soft Credit Summary
    When I click Save
    Then I should see the Soft Credit Summary tile



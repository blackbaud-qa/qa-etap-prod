Feature: select a layout and a tile

  Scenario: selecting the 3 column layout
    Given I logged into etapestry
    And I am on the dashboard
    And I click on select tiles and layouts
    And I click on 3 equal columns
    When I click save
    Then I should see the dashboard in 3 columns

  Scenario: selecting a report tile
    Given I logged into etapestry
    And I am on the dashboard
    And I click on select tiles and layouts
    And I click on the top donor report
    When I click save
    Then I should see the top donor report on the dashboard


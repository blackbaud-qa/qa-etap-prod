Feature: select a layout and a tile

  Scenario: selecting the 3 column layout
    Given I logged into etapestry
    And I am on an account
    And I am on the home page
    And I click on select tiles and layout
    And I click on 3 column layout
    When i click save
    Then I should see the homepage in 3 columns

  Scenario: selecting a report tile
    Given I logged into etapestry
    And I am on an account
    And I am on the home page
    And I click on select tiles and layout
    And I click on soft credit summary
    When I click save
    Then I should see the soft credit summary tile


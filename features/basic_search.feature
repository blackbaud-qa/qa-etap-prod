Feature: Search using the dynamic search field

  Scenario: Searching for an account, pressing Enter
    Given I am logged into eTap
    When I type Almo into the dynamic search field
    And I press Enter on the keyboard
    Then the find account screen should display
    And Talisha Almond will show in the results

  Scenario: Searching for an account, clicking the magnifying glass
    Given I am logged into eTap
    When I type Almo into the dynamic search field
    And I click the magnifying glass
    Then the find account screen should display
    And Talisha Almond will show in the results
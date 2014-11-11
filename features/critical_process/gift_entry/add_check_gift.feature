Feature: Adding a gift with payment type of check

  Scenario: Add a gift from the journal page
    Given I am logged into eTap
    When I type Alm into the dynamic search field
    And I press Enter on the keyboard
    Then the find account screen should display
    And Talisha Almond should show in the results

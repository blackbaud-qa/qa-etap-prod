Feature: Search using the dynamic search field

  Scenario: Searching for an account, pressing Enter
    Given I am logged into eTap
    When I type 'Alm' into the dynamic search field
    And I press Enter on the keyboard
#    Then the find account screen should display
#    And Talisha Almond should show in the results

  Scenario: Searching by account number with one slash, pressing Enter
    Given I am logged into eTap
    When I type '/27' into the dynamic search field
    And I press Enter on the keyboard
#    Then I should be taken to Talisha Almond's Home page

  Scenario: Searching by account number with two slashes, pressing Enter
    Given I am logged into eTap
    When I type '//27' into the dynamic search field
    And I press Enter on the keyboard
#    Then Talisha Almond should show in the results

  Scenario: Searching for an account, clicking the magnifying glass
    Given I am logged into eTap
    When I type 'Alm' into the dynamic search field
    And I click the magnifying glass
#    Then the find account screen should display
#    And Talisha Almond should show in the results

  Scenario: Searching by account number with one slash, clicking the magnifying glass
    Given I am logged into eTap
    When I type '/27' into the dynamic search field
    And I click the magnifying glass
#    Then I should be taken to Talisha Almond's Home page

  Scenario: Searching by account number with two slashes, clicking the magnifying glass
    Given I am logged into eTap
    When I type '//27' into the dynamic search field
    And I click the magnifying glass
#    Then Talisha Almond should show in the results

  Scenario: Searching for an account in the dynamic drop down
    Given I am logged into eTap
    When I type 'Alm' into the dynamic search field
    And I pause for 3 seconds or more
#    Then the dynamic drop down should appear
#    And Talisha Almond should show in the list
    Then choose the option from the dynamic drop down


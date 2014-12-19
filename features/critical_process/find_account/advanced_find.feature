Feature: Searching from advanced find

  Scenario: Searching by Name, pressing Enter
    Given I am logged into eTap
#    And my Default Search Type user preference is set to Quick Find
    When I click Accounts
    And I click Advanced Find
    And I type 'Jose' into the Name field
    And I press Enter on the keyboard
    Then 'Jose Berrios' should show in the advanced find name results

  Scenario: Searching by Email, pressing Enter
    Given I am logged into eTap
#    And my Default Search Type user preference is set to Quick Find
    When I click Accounts
    And I click Advanced Find
    And I type 'qa-1@blackbaud.com' into the Email field
    And I press Enter on the keyboard
    Then 'Talisha Almond' should show in the advanced find name results

  Scenario: Searching by Name, clicking Find
    Given I am logged into eTap
#    And my Default Search Type user preference is set to Quick Find
    When I click Accounts
    And I click Advanced Find
    And I type 'Jose' into the Name field
    And I click Find
    Then 'Jose Berrios' should show in the advanced find name results

  Scenario: Searching by Email, clicking Find
    Given I am logged into eTap
#    And my Default Search Type user preference is set to Quick Find
    When I click Accounts
    And I click Advanced Find
    And I type 'qa-1@blackbaud.com' into the Email field
    And I click Find
    Then 'Talisha Almond' should show in the advanced find name results
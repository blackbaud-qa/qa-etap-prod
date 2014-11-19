Feature: Searching from quick find

  Background:
#    Given my Default Search Type user preference is set to Quick Find
    Given I navigate to Fullhouse
    And I login into eTap


  Scenario: Searching for an account, pressing Enter
   # Given I am logged into eTap
    When I click Accounts
    And I type 'Jose' into the search field
    And I press Enter on the keyboard
    Then 'Jose Berrios' should show in the results

  Scenario: Searching for an account that is not in the database, pressing Enter
    When I click Accounts
    And I type 'alm' into the search field
    And I press Enter on the keyboard
    Then I should see the message: 'No Results Found'
#
#  Scenario: Searching by account number with one slash, pressing Enter
#    Given I am logged into eTap
#    When I click Accounts
#    And I type /27 into the search field
#    And I press Enter on the keyboard
#    Then I should be taken to Talisha Almond's Home page
#
#  Scenario: Searching by account number with two slashes, pressing Enter
#    Given I am logged into eTap
#    When I click Accounts
#    And I type //27 into the search field
#    And I press Enter on the keyboard
#    Then Talisha Almond should show in the results
#
#  Scenario: Searching with asterisk, pressing Enter
#    Given I am logged into eTap
#    When I click Accounts
#    And I alm* into the search field
#    And I press Enter on the keyboard
#    Then Talisha Almond should show in the results
#
#  Scenario: Searching with quotations, pressing Enter
#    Given I am logged into eTap
#    When I click Accounts
#    And I type "bob barker" into the search field
#    And I press Enter on the keyboard
#    Then Bob Barker Junior should show in the results
#
#  Scenario: Searching for an account, clicking Find
#    Given I am logged into eTap
#    When I click Accounts
#    And I type Jose into the search field
#    And I click Find
#    Then Jose Berrios should show in the results
#
#  Scenario: Searching for an account that is not in the database, clicking Find
#    Given I am logged into eTap
#    When I click Accounts
#    And I type alm into the search field
#    And I click Find
#    Then I should see the message: No Results Found
#
#  Scenario: Searching by account number with one slash, clicking Find
#    Given I am logged into eTap
#    When I click Accounts
#    And I type /27 into the search field
#    And I click Find
#    Then I should be taken to Talisha Almond's Home page
#
#  Scenario: Searching with asterisk, clicking Find
#    Given I am logged into eTap
#    When I click Accounts
#    And I alm* into the search field
#    And I click Find
#    Then Talisha Almond should show in the results
#
#  Scenario: Searching by account number with two slashes, clicking Find
#    Given I am logged into eTap
#    When I click Accounts
#    And I type //27 into the search field
#    And I click Find
#    Then Talisha Almond should show in the results
#
#  Scenario: Searching with quotations, clicking Find
#    Given I am logged into eTap
#    When I click Accounts
#    And I type "bob barker" into the search field
#    And I click Find
#    Then Bob Barker Junior should show in the results
#
#  Scenario: Searching with Exact Match
#    Given I am logged into eTap
#    When I click Accounts
#    And I type bob barker into the search field
#    And I click Exact Match
#    Then the text in the search field should update to "bob barker"
#    And Bob Barker Junior should show in the results
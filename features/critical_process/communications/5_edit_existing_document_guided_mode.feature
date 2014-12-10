Feature: Creating a new communications template

  Background:
    Given a query category has been created called Donation Queries
    And a query for all Donations Made Last Year has been created in the Donation Queries category
    And a template named Simple Business Letter - Guided Mode has already been created in the Thank You Letters category

  Scenario: creating a simple business letter in guided mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Thank You Letters
    And click Simple Business Letter


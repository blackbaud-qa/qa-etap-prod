@crit_proc7
Feature: Edit a diy event page

  Background:
    Given I login into eTap for CP7

  Scenario: editing a diy event page
    When I make edits to an existing diy event page
    And I submit an entry on the live event page
    And I verify that the DIY event submission was created correctly
    And I change the name of the user defined field 'Date of Birth' to 'Birthdate' on the DIY Event page
    And I submit an entry on the live edited event page
    And I verify that the DIY event submission via the edited event page was created correctly
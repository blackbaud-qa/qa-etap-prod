@crit_proc7
Feature: Edit a diy contact page

  Background:
    Given I login into eTap for CP7

  Scenario: editing a diy contact page
    When I make edits to an existing diy contact page
    And I submit an entry on the live contact page
    And I verify that the DIY contact submission was created correctly
    And I change the name of the user defined field 'Date of Birth' to 'Birthdate' on the DIY page
    And I submit an entry on the live edited contact page
    And I verify that the DIY contact submission via the edited contact page was created correctly








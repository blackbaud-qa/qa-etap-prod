Feature: Edit all pages of account

  Background:
    Given I login into eTap for deeper regression

  Scenario: Edit Home Page
    When I type 'Talisha Almond' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I click Select Tiles and Layout on the Home page of an account
    And I check the box for Household Giving Summary tile
    And I click Save
    Then I should see the Household Giving Summary tile on the Home page

  Scenario: Edit Personas Page
    When I type 'Talisha Almond' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I click Personas
    When I set Address Lines to '311 E Eisenhower Parkway' on the classic add account page
    And I click Save And 'Edit'
    Then the Address Lines should be set to '311 E Eisenhower Parkway'

  Scenario: Edit Relationship Page
    When I type 'Claire Bradley' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Claire Bradley' in the search results
    And I click on Relationships
    And I click on the existing Friend relationship on the Relationships page
    And I click on the 'Base' UDF category on the Relationships page
    And I set the UDF 'Notify' dropdown to 'Yes' on the Relationships page
    And I click Save And 'Go to Personas'
    Then I should be taken to the Persona page 'Claire Bradley''s account

  Scenario: Edit Journal Page
    When I go to the journal of account 'Jose Berrios'
    And I click on the Gift listed in the journal
    And set the Approach to 'Unsolicited'
    When I click Save And 'Edit'
    Then the Approach should be set to 'Unsolicited'

  Scenario: Edit Account Settings Page
    When I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jose Berrios' in the search results
    And I click Account Settings
    And I click Change Recognition on the Account Settings page
    And I select Anonymous in the Change Recognition Type modal
    When I click Continue in the Change Recognition Type modal on the Account Settings page
    Then I should see Anonymous listed as the Recognition name

  Scenario: Edit Defined Fields Page
    When I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jose Berrios' in the search results
    And I click on the 'Defined Fields' page of the constituent record
    And I click on the 'Base' UDF category on the Relationships page
    And I set the UDF 'Marital Status' dropdown to 'Married' on the classic add account page
    And I click Save And 'Go to Persona'
    Then I should be taken to the Persona page 'Jose Berrios''s account






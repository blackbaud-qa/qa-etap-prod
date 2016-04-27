Feature: Adding/Deleting Persona
  Background:
    Given I login into eTap for bugs

  Scenario: Adding/Deleting Persona
    Given I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jose Berrios' in the search results
    And I click Personas
    And I select 'Joint' from the Persona type drop down
    And I set Email to 'jose@business.com' on the classic add account page
    When I click Save And 'Edit'
    And the Email field should be set to 'jose@business.com'
    And I click Delete on the Personas page
    Then I should be taken to the Persona page 'Jose Berrios''s account


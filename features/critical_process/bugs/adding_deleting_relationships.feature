Feature: Adding/Editing/Deleting relationship

  Background:
    Given I login into eTap for bugs

  Scenario: Adding/Editing/Deleting Relationship
    Given I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on Relationships from the Role Icon drop down for 'Jose Berrios'
    And I click New Relationship in the Tasks box
    And I select the Relationship Type of 'Spouse / Spouse' on the Relationships page
    And I set the related account to 'Talisha Almond'
    And I select Primary for account 1 under Household Relationship
    When I click Save And 'Go to Relationships'
    And I click on the existing Spouse relationship on the Relationships page
    And I select Member for account 1 under Household Relationship
    And I click Save And 'Go to Relationships'
    And I click the Delete link on the Relationships page
    And I click Delete in the Delete this Relationship modal
    Then I should not see a Relationship on the Relationships page



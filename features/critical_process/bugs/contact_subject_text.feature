@bugs
Feature: Contact Subject Text Query

  Background:
    Given I login into eTap for bugs

  Scenario: Querying on multiple contact subjects with quotations
    Given I click Accounts on the main menu
    And I click on Find an Account on the accounts menu
    And I type 'Talisha' into the search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I click Journal
    And select Contact from the Add New... drop down menu
    And I set the Subject field to 'Called to Discuss Gala' on the Journal Contact page
    And I choose Phone from the Method drop down on the Journal Contact page
    And I click Save And 'Go to Journal'
    And I click Journal
    And select Contact from the Add New... drop down menu
    And I set the Subject field to 'Golf Outing Discussion' on the Journal Contact page
    And I choose Phone from the Method drop down on the Journal Contact page
    And I click Save And 'Go to Personas'
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
#    And I click on the 'Mass Update' category
#    And I click on the 'New Journal Contacts' query
    And I click on the 'Base' category
    And I click 'New Query' on the Edit Query Category page
    And I set the Name to 'Contact Subject' on the Create a New Query page
    And I set the data return type to 'Journal Entries' on the Create a New Query page
    And I set the Available Fields category to 'Journal' on the Create a New Query page
    And I click on 'Contact Subject Text' under Available Fields on the Create a New Query page
    And I set the Contact Subject Text to '"Called to Discuss Gala"' on the Create a New Query page
    And I click the plus sign to add another Contact Subject Text field on the Create a New Query page
    And I set the second Contact Subject Text to '"Golf Outing Discussion"' on the Create a New Query page
    And I click Save And 'Preview'
    And I should see Displaying 1 - 2 of 2 on the Query Preview page
    And I click Queries on the main menu
    And I click on Manage Queries on the queries menu
#    And I click on the 'Mass Update' category
#    And I click on the 'New Journal Contacts' query
    And I click on the 'Base' category
    When I click delete below the 'Contact Subject' query on the Create a New Query page
    And I click Yes to permanently delete the item
    And I click Accounts on the main menu
    And I click on Find an Account on the accounts menu
    And I type 'Talisha' into the search field
    And I press Enter on the keyboard
    And I click on 'Talisha Almond' in the search results
    And I click Journal
    And I click on the Golf Outing Discussion contact in the Journal
    And I click Delete on the contact page
    And I click Journal
    And I click on the Called to Discuss Gala contact in the Journal
    And I click Delete on the contact page
    Then I should be taken to 'Talisha Almond' Journal page







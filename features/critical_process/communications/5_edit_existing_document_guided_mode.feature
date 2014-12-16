Feature: Editing a communications template

  Background:
    Given a query category has been created called Donation Queries
    And a query for all Donations Made Last Year has been created in the Donation Queries category
    And a template named Simple Business Letter - Guided Mode has already been created in the Thank You Letters category
    And a template named Simple Business Letter - Advanced Editor Mode has already been created in the Thank You Letters category

  Scenario: adding a widget to a simple business letter in guided mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Thank You Letters
    And click Simple Business Letter
    And click on the Body to open the Edit Contents pop up
    And place the cursor between the second and third paragraph
    And click Insert Letter Widget
    And Select the Entry List widget
    And click Insert
    And double click on the Entry List Widget to edit it
    And click Add Another Column
    And set the category to Journal Fields
    And set the field to Gift Type
    And click Insert
    And click Update
    And click Save And Create Document
    And set the Category to Donation Queries
    And set the query to Donations Made Last Year
    And click Next
    And set the document type to Word
    And set Grouping to One Document Per Account
    And click Next
    And click Next
    And set Receiving to Download documents
    And click Next
    And click Next
    And click Run
    Then the Word document should generate
    And when you open the file it should contain X pages
    And the document should display properly with your changes including the Entry List Widget

  Scenario: adding a widget to a simple business letter in advanced editor mode
    Given I am logged into eTap






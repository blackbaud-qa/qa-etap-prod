Feature: Previewing communications templates

  Background:
    Given a custom account query has been created for Talisha Almond
    And the email address on this account's primary person is set to qa-1@blackbaud.com
    And a template named Lapsed Donor Contact has already been created in the Email Templates category

  Scenario: generate Word documents and add journal contacts
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And click Create Documents under Lapsed Donor Contact
    And set the Category to Custom Account Queries
    And set the query to Talisha Almond
    And click Next
    And set the document type to Word
    And click Next
    And click Next
    And set the Receiving method to Download documents
    And click Next
    And mark the checkbox next to Create a Journal Contact for Each Account
    And set the Subject to Document Generated: Lapsed Donor Contact - Word
    And set the Method to Letter
    And click Next
    And click Run
    Then the Word document should generate
    And a contact dated for today with the subject "Document Generated: Lapsed Donor Contact - Word" should be added to Talisha Almond's journal page

  Scenario: generate PDF documents and add journal contacts
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And click Create Documents under Lapsed Donor Contact
    And set the Category to Custom Account Queries
    And set the query to Talisha Almond
    And click Next
    And set the document type to PDF
    And click Next
    And click Next
    And set the Receiving method to Download documents
    And click Next
    And mark the checkbox next to Create a Journal Contact for Each Account
    And set the Subject to Document Generated: Lapsed Donor Contact - PDF
    And set the Method to Letter
    And click Next
    And click Run
    Then the PDF document should generate
    And a contact dated for today with the subject "Document Generated: Lapsed Donor Contact - PDF" should be added to Talisha Almond's journal page

  Scenario: send basic mass email and add journal contacts
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And click Mass Email under Lapsed Donor Contact
    And select Basic Mass Email
    And select Send a Mass Email
    And set the Category to Custom Account Queries
    And set the query to Talisha Almond
    And click Next
    And set the Name to eTapestry QA
    And set both Email fields to qa-1@blackbaud.com
    And click Next
    And mark the checkbox next to Create a Journal Contact for All Recipients
    And set the Subject to We Miss You! - Basic Mass Email
    And set the Method to Email
    And click Next
    And click Send
    Then the email should send successfully to qa-1@blackbaud.com
    And a contact dated for today with the subject "We Miss You! - Basic Mass Email" should be added to Talisha Almond's journal page

  Scenario: send basic mass email and add journal contacts
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And click Mass Email under Lapsed Donor Contact
    And select Advanced Mass Email
    And select Send a Mass Email
    And set the Category to Custom Account Queries
    And set the query to Talisha Almond
    And click Next
    And set the Name to eTapestry QA
    And set both Email fields to qa-1@blackbaud.com
    And click Next
    And mark the checkbox next to Create a Journal Contact for All Recipients
    And set the Subject to We Miss You! - Advanced Mass Email
    And set the Method to Email
    And click Next
    And click Send
    Then the email should send successfully to qa-1@blackbaud.com
    And a contact dated for today with the subject "We Miss You! - Advanced Mass Email" should be added to Talisha Almond's journal page


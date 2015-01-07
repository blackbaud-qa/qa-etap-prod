Feature: Creating a new communications template

  Background:
    Given a custom account query has been created for Talisha Almond
    And the email address on this account's primary person is set to qa-1@blackbaud.com

  Scenario: creating a newsletter in guided mode
    Given I am logged into eTap
    When I click Communications on the main menu
    And click Email Templates
    And click New Email or Document Template
    And set the Name to Simplicity - Advanced Editor Mode
    And click Tab
    And verify that the Subject now says Simplicity - Advanced Editor Mode
    And click Next
    And click on the Simplicity template
    And click Advanced Modes
    And click Advanced Editor Mode
    And click Yes
    And double click the image to open the Insert/edit image pop up
    And click the browse icon
    And click Browse
    And select an image from my computer
    And click Upload
    And click the uploaded image
    And click Ok
    And select all the text in the first article
    And set the font to Comic Sans
    And select the title in the first article
    And set the size to 16pt
    And change the title to Something Interesting
    And change the subtitle to Is what this is about
    And add another line below the first paragraph in the first article
    And type in Google and Email Us
    And highlight Google
    And create a hyperlink to www.google.com
    And highlight Email Us
    And create a hyperlink to mailto:qa-1@blackbaud.com
    And click Save And Mass Email
    And select Advanced Mass Email
    And set the Category to Custom Account Queries
    And set the query to Talisha Almond
    And click Next
    And set the Name to eTapestry QA
    And set both Email fields to qa-1@blackbaud.com
    And click Next
    And click Next
    And click Send
    Then the email should send successfully to qa-1@blackbaud.com
    And when you open the email it should display properly with your changes
    And the Google link should work
    And the Email Us link should work
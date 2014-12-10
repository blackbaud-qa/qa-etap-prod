Feature: Publishing a diy page with a custom skin

  Scenario: creating a new diy contact page with custom skin
    Given I am logged into eTap
    When I click Management
    And click DIY Forms
    And click Create a New Page
    And click Contact Page
    And select the Custom template (we will need developers to add a custom skin to the database ahead of time)
    And click Next
    And set the Name to Contact Page
    And set the Title to Contact Page
    And set the URL to ContactUs
    And set the Journal Contact Subject to Online Sign Up
    And set the From what address? to qa-1@blackbaud.com
    And set the Subject to Thank you for signing up!
    And set the To what address(es)? to qa-1@blackbaud.com
    And set the Subject to Sign Up Received
    And click Submit
    And click Go Live
    And click Yes, Go Live!
    Then the page will successfully go live
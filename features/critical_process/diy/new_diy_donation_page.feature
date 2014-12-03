Feature: Creating a new diy donation page

  Scenario: creating a new diy page
    Given I am logged into eTap
    When I click Management
    And click DIY Forms
    And click Create a Page
    And click Online Giving Page
    And select the Embeddable template
    And click Next
    And set the Name to Donation Page
    And set the Title to Donation Page
    And set the URL to Donate
    And set the From what address? to qa-1@blackbaud.com
    And set the Subject to Thank you for your donation!
    And set the To what address(es)? to qa-1@blackbaud.com
    And set the Subject to Donation Received
    And set the Fund to General
    And click Submit
    And click Go Live
    And click Yes, Go Live!
    Then the page will successfully go live
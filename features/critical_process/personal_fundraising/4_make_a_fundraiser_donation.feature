@crit_proc2
Feature: Making a donation to a fundraiser

#  Background:
#    Given I have a processor set up in my database
#    And a Fundraiser set up in my database named QA Fundraiser [X]
#    And I have already registered John Crabtree

  Scenario: making a donation
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I sort by Status on the Fundraisers Page
    And I click on the QA Fundraiser 1 url on the Fundraiser page
    And I switch to the new tab in my browser
    And I click Make a Donation on the live fundraiser page
    And I select Donate Toward a Team or Individual's Goal on the live fundraiser page
    And I search for 'John' on the live fundraiser page
    And I select Sponsor John Crabtree - Individual on the live fundraiser page
    And I click Next on the live fundraiser page
    And I set the First Name field to 'Robert' on the live fundraiser donation page
    And I set the Last Name field to 'Howell' on the live fundraiser donation page
    And I set the Country to 'United States' on the live fundraiser donation page
    And I set the Address to '8771 W. Vine Place' on the live fundraiser donation page
    And I set the City to 'Indianapolis' on the live fundraiser donation page
    And I set the State to 'Indiana' on the live fundraiser donation page
    And I set the Postal Code to '46220' on the live fundraiser donation page
    And I set the Phone to '3173337788' on the live fundraiser donation page
    And I set the Email field to 'lance.moore@blackbaud.com' on the live fundraiser donation page
    And I set the donation type to 'One Time' on the live fundraiser donation page
    And I set the donation amount to '10' on the live fundraiser donation page
    And I select credit card for payment method on the live fundraiser page
    And I set the card type to 'Visa' on the live fundraiser page
    And I set the Card Number to '4111111111111111' on the live fundraiser page
    And I set the Security Code to '435' on the live fundraiser page
    And I set the Expiration Month to '3' on the live fundraiser page
    And I set the Expiration Year to '2035' on the live fundraiser page
    And I click Next on the live fundraiser page
    And I click Next on the live fundraiser page
    And I click Next on the live fundraiser page
    Then the registration confirmation page should say: 'Thank you for your generous donation!'
    And I close the current tab

  Scenario: verify donation is listed on fundraiser
    Given I am logged into eTap
    When I click Management on the main menu
    And I click Fundraisers on the Management menu
    And I sort by Status on the Fundraisers Page
    And I click on the QA Fundraiser 1 url on the Fundraiser page
    And I switch to the new tab in my browser
    And I click Find a Team Participant on the live fundraiser page
    And I search for 'John' on the live fundraiser participant search page
    And I click on 'John Crabtree' on the live fundraiser participant search page
    Then I should see 'Robert Howell' listed as a donor
    And I close the current tab

  Scenario: verify the donation is in the database with the soft credit link
    Given I am logged into eTap
    When I click Accounts on the main menu
    And I type 'Robert Howell' into the search field
    And I click Find
    And I click on 'Robert Howell' in the search results
    And I click Journal
    And I click on the Gift listed in the journal
    And click on Tribute Information
    Then the Soft Credit Information should be set to 'John Crabtree'



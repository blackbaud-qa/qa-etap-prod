@crit_proc7
Feature: Creating a new diy donation page

  Scenario: creating a new diy donation page
    Given I login into eTap for CP7
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
#    This is currently dependent on there already being a DIY page created
    And I click Create a Page
    And I click Online Giving Page
    And I select the Embeddable template
    And I click Next on the DIY template page
    And I set the Name to 'Donation Page' on the DIY settings page
    And I set the Title to 'Donation Page' on the DIY settings page
    And I set the URL to 'Donate' on the DIY settings page
    And I set the Default Country to 'United States' on the DIY settings page
    And I set the From what address? to 'lance.moore@blackbaud.com' on the DIY settings page
    And I set the From Subject to 'Thank you for your donation!' on the DIY settings page
    And I set the To what address(es)? to 'lance.moore@blackbaud.com' on the DIY settings page
    And I set the Subject to 'Donation Received' on the DIY settings page
    And I set the Fund to 'General' on the DIY settings page
    And I click Submit on the DIY settings page
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click on the link for the form titled Donation Page
    And I switch to the new tab in my browser
    Then I should see the new DIY page
    And I should see the country set to 'US' on the DIY page
    And I close the current tab

#    Then the page will successfully go live
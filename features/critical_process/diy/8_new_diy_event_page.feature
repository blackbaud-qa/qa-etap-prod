@crit_proc7
Feature: Creating a new diy event page

  Scenario: creating a new diy event page
    Given I login into eTap for CP7
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
##    This is currently dependent on there already being a DIY page created
    And I click Create a Page
    And I click Event Registration Page
    And I select the Embeddable template
    And I click Next on the DIY template page
    And I set the Name to 'Event Registration Page' on the DIY settings page
    And I set the Title to 'Event Registration Page' on the DIY settings page
    And I set the URL to 'Event' on the DIY settings page
    And I set the Default Country to 'Australia' on the DIY settings page
    And I unmark both checkboxes for sending email confirmations
    And I set the Fund to 'General' on the DIY settings page
    And I set the Campaign to 'Annual' on the DIY settings page
    And I set the Approach to 'Unsolicited' on the DIY settings page
    And I click Submit on the DIY settings page
    And I connect a Ticket Quantity UDF to my Event Page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click on the link for the form titled Event Registration Page
    And I switch to the new tab in my browser
    Then I should see the new DIY page
    And I should see the country set to 'AU' on the DIY page
    And I close the current tab

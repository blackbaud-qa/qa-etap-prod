#@crit_proc7
Feature: Edit a diy volunteer page

  Background:
    Given I login into eTap for CP7


  Scenario: editing a diy volunteer page
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Existing Volunteer Page'
    And I click Edit Style on the DIY editor page
    And I click Swap Template on the DIY editor page
    And I select the Float template on the DIY editor page
    And I click Swap To This Template on the DIY editor page
    And I click Edit Style on the DIY editor page
    And I change the Title font to Comic Sans 20pt on the DIY editor page
    And I change the Main Background to #EEEEEE on the DIY editor page
    And I click Update on the DIY editor page
    And I click Settings on the DIY editor page
    And I unmark the checkbox next to Include comments box
    And I click Update on the DIY settings page
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click 'Date of Birth' on the DIY editor page
    And I click Update on the Add Fields page
    And I click Add Item on the DIY editor page
    And I select Add Text on the DIY editor page
    And I change the default text on the DIY editor page
    And I click Update on the Add Text page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Volunteer Page
    And I switch to the new tab in my browser
    Then I should see the edited DIY page
    And I should see Date of Birth on the edited DIY page
    And I close the current tab
    And I click Edit for the form titled 'Existing Volunteer Page'
    And I hover over the Date of Birth field on the DIY editor page
    And I click the pencil icon that appears on the DIY editor page
    And I set the Label field to 'Birthdate' on the DIY editor page
    And I click Update on the DIY Edit Field modal
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click on the link for the form titled Existing Volunteer Page
    And I switch to the new tab in my browser
    And I should see Birthdate on the edited DIY page
    And I close the current tab


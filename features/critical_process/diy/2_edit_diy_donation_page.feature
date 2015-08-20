@crit_proc
Feature: Edit a diy donation page

#  Background:
#    Given a DIY form titled Donation Page already exists

  Scenario: creating a new diy page
    Given I am logged into eTap
    When I click Management on the main menu
    When I click on DIY Forms on the management page
    And I click Edit for the form titled 'Donation Page'
    And I click Edit Style on the DIY editor page
    And I click Swap Template on the DIY editor page
    And I select the Steel template on the DIY editor page
    And I click Swap To This Template on the DIY editor page
    And I click Edit Style on the DIY editor page
    And I change the Title font to Comic Sans 20pt on the DIY editor page
    And I change the Main Background to #EEEEEE on the DIY editor page
#    And I click Update under the Main Background on the DIY editor page
    And I click Update on the DIY editor page
    And I click Settings on the DIY editor page
    And I click Change Selected Funds on the DIY settings page
    And I click Unrestricted on the DIY settings page
#    And I set the Fund to 'Unrestricted' on the DIY settings page
    And I click Update on the DIY funds page
    And I click Select a Campaign on the DIY settings page
    And I click Annual on the DIY settings page
    And I click Select an Approach on the DIY settings page
    And I click Unsolicited on the DIY settings page
    And I click Update on the DIY settings page
#    And click the pencil icon that appears when hovering over Donation Amount
    And I hover over the Donation Amount on the DIY editor page
    And I click the pencil icon that appears on the DIY editor page
    And I mark the checkbox next to Include Specific Giving Levels on the DIY editor page
    And I click Update on the DIY gift info page
#    And I click Add Item on the DIY editor page
#    And I select Add Image on the DIY editor page
#    And I double-click on the default image on the DIY editor page
  #currently excluding the image step due to general problems automating image upload and selection
#    And I select an image from my computer
#    And I click Ok
    And I click Add Item on the DIY editor page
    And I select Add Fields on the DIY editor page
    And I select 'Base' for the field category on the DIY editor page
    And I click 'Gender' on the DIY editor page
    And I click Update on the Add Fields page
#    And move the Gender field down under Contact Information
    And I click Add Item on the DIY editor page
    And I select Add Text on the DIY editor page
    And I change the default text on the DIY editor page
    And I click Update on the Add Text page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
#    And click Go Live
#    And click Yes, Go Live!
#    And click Replace
#    Then the page will successfully go live

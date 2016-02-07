@bugs
Feature: Verifying that the dollar sign does not prevent a gift or pledge from being saved properly, bug 477369

  Scenario: Verifying that typing a dollar sign into the Received field does mess up the gift once saved
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Event Page'
    And I hover over the Ticket Section on the DIY editor page
    And I click the pencil icon that appears on the DIY editor page
    And I click Update on the DIY Edit Ticket Options page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click Home on the main menu
    And I type 'Niles' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Niles Baker' in the search results
    And I click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date field to '9/2/2090'
    And set the Received Amount field to '$5'
    And set the Fund to 'General'
    And set the Gift Type to Check
    And set the Check Date to '9/2/2090'
    And set the Check Number to '879'
    And I click Save And 'Edit'
    And the Received Amount should be set to '$5.00'
    And the Non-Deductible Amount should be set to the '$0.00'
    And the Fund should be set to 'General'
    And the Check Date should be set to '9/2/2090'
    And the Check Number should be set to '879'
    And I click Delete on the transaction page
    Then I should see the message '0 Journal Entries' on the journal page


  Scenario: Verifying that the dollar sign in the Pledge Installment Amount field does not prevent a pledge from being saved
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Edit for the form titled 'Event Page'
    And I hover over the Ticket Section on the DIY editor page
    And I click the pencil icon that appears on the DIY editor page
    And I click Update on the DIY Edit Ticket Options page
    And I click Save on the DIY editor page
    And I confirm saving my changes
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click Replace on the DIY editor page
    And I click Home on the main menu
    And I type 'Niles' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Niles Baker' in the search results
    And I click Journal
    And select Gift/Pledge from the Add New... drop down menu
    And set the date field to '9/2/2090'
    And I set the Pledged Amount to '100'
    And set the Fund to 'Unrestricted'
    And I click Create Pledge Schedule on the new pledge page
    And I set the Frequency to 'Monthly (12)'
    And I click Save And 'Edit'
    And I click Delete on the transaction page
    Then I should see the message '0 Journal Entries' on the journal page
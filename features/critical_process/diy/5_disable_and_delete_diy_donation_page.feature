@crit_proc7
Feature: Copy, publish, disable and delete diy donation page

  Scenario: copying, publishing, disabling and deleting a diy page
    Given I login into eTap for CP7
    When I click Management on the main menu
    And I click on DIY Forms on the management menu
    And I click Disable for the form titled 'Donation Page'
    And I click Yes, Disable the Page
    And I click Delete for the form titled 'Donation Page'
    And I click Yes, Delete the Page
    Then the Donation Page should no longer show

#    When I click Management on the main menu
#    And I click on DIY Forms on the management menu
#    And I click Copy for the form titled 'Existing Donation Page'
#    And I click No, Just Make a Copy to copy the page
#    And I click Edit for the form titled 'Existing Donation Page-Copy'
#    And I click Go Live on the DIY editor page
#    And I click Yes, Go Live! on the DIY editor page
#    And I click on the link for the form titled Existing Donation Page-Copy
#    And I switch to the new tab in my browser
#    Then I should see the new DIY page
#    And I close the current tab
#    And I click Disable for the form titled 'Existing Donation Page-Copy'
#    And I click Yes, Disable the Page
#    And I click Delete for the form titled 'Existing Donation Page-Copy'
#    And I click Yes, Delete the Page
#    Then the 'Existing Donation Page-Copy' DIY page should no longer show
#    Then the Donation Page should no longer show
@crit_proc
Feature: Publishing a diy page with a custom skin

  Scenario: creating a new diy contact page with custom skin
    Given I am logged into eTap
    When I click Management on the main menu
    And I click on DIY Forms on the management page
    And I click Create a Page
    And I click Contact Page
    And I select the Custom template
    And I click Next on the DIY create contact page
    And I set the Name to 'Contact Page' on the DIY settings page
    And I set the Title to 'Contact Page' on the DIY settings page
    And I set the URL to 'ContactUs' on the DIY settings page
    And I set the Journal Contact Subject to 'Online Sign Up' on the DIY settings page
    And I set the From what address? to 'lance.moore@blackbaud.com' on the DIY settings page
    And I set the From Subject to ' Thank you for signing up!' on the DIY settings page
    And I set the To what address(es)? to 'lance.moore@blackbaud.com' on the DIY settings page
    And I set the Subject to 'Sign Up Received' on the DIY settings page
    And I click Submit on the DIY settings page
    And I click Go Live on the DIY editor page
    And I click Yes, Go Live! on the DIY editor page
    And I click on the link for the form titled Contact Page
    And I switch to the new tab in my browser
    Then the custom template should be shown
    And I close the current tab
    And I scroll up on the DIY page to prevent automation errors
    And I click Disable for the form titled 'Contact Page'
    And I click Yes, Disable the Page
    And I click Delete for the form titled 'Contact Page'
    And I click Yes, Delete the Page


#    Then the page will successfully go live
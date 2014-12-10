Feature: Edit a diy donation page

  Background:
    Given a DIY form titled Donation Page already exists

  Scenario: creating a new diy page
    Given I am logged into eTap
    When I click Management
    And click DIY Forms
    And click Edit for the form titled Donation Page
    And click Edit Style
    And click Swap Template
    And select Steel
    And click Swap To This Template
    And click Edit Style
    And change the Title font to Comic Sans 20pt
    And change the Main Background to #EEEEEE
    And click Update under the Main Background
    And click Update
    And click Settings
    And click Change Selected Fund(s)
    And click Unrestricted
    And click Update
    And click Select a Campaign
    And click Annual
    And click Select an Approach
    And click Unsolicited
    And click Update
    And click the pencil icon that appears when hovering over Donation Amount
    And mark the checkbox next to Include Specific Giving Levels
    And click Update
    And click Add Item
    And select Add Image
    And double-click on the default image
    And select an image from my computer
    And click Ok
    And click Add Item
    And select Add Fields
    And click Gender
    And click Update
    And move the Gender field down under Contact Information
    And click Add Item
    And select Add Text
    And change the default text
    And click Update
    And click Save
    And click Go Live
    And click Yes, Go Live!
    And click Replace
    Then the page will successfully go live

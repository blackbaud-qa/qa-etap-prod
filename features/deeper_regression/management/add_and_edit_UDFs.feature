@deep_reg
Feature: Adding and Editing UDFs

  Background:
    Given I login into eTap for deeper regression

  Scenario: Adding UDF
    When I click Management on the main menu
    And I click on User Defined Fields on the management menu
    And I click the Base UDF category on the Edit User Defined Fields page
    And I click New Defined Field
    And I set the Name to 'Chapter' on the new defined field page
    And I set the Data Type to 'Text'
    And I click Next
    And I set the Field Application to 'Constituent' on the new defined field page
    And I click Next
    And I click Next
    And I set the Display Type to Allow Assignment of Only 1 Item on the new defined field page
    And I click Next
    And I click Next
    And I add the value of 'First' on the UDF page
    And I click Save and Finish on the UDF page
    When I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jose Berrios' in the search results
    And I click on the 'Defined Fields' page of the constituent record
    And I click on 'Base' on the Defined Fields page of an account
    And I set the UDF 'Chapter' dropdown to 'First' on the classic add account page
    And I click Save And 'Go to Defined Fields'
    Then I should see a UDF value of First

  Scenario: Editing UDF
    When I click Management on the main menu
    And I click on User Defined Fields on the management menu
    And I click the Base UDF category on the Edit User Defined Fields page
    And I click Chapter on the UDF page
    And I add the value of 'Second' on the UDF page
    And I click Save and Finish on the UDF page
    When I type 'Jose Berrios' into the dynamic search field
    And I press Enter on the keyboard
    And I click on 'Jose Berrios' in the search results
    And I click on the 'Defined Fields' page of the constituent record
    And I click on 'Base' on the Defined Fields page of an account
    And I set the UDF 'Chapter' dropdown to 'Second' on the classic add account page
    And I click Save And 'Go to Defined Fields'
    Then I should see a UDF value of Second



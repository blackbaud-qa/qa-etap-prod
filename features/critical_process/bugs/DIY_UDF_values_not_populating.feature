Feature: UDF values should still function properly after republishing

  Scenario: UDF values function on a published DIY page
    Given a DIY form titled UDF Test 490078 exists
    And the DIY page UDF Test 490078 contains the UDF Gender
    And all email notifications are disabled for the DIY page UDF Test 490078
    When I submit a successful credit card transaction for John Smith on page UDF Test 490078
    Then the constituent John Smith should be Male

  Scenario: UDF values function on republished DIY page after new UDF value has been added to the page
    Given a DIY form titled UDF Test 490078 exists
    And the DIY page UDF Test 490078 contains the UDF Gender
    And all email notifications are disabled for the DIY page UDF Test 490078
    When the DIY page UDF Test 490078 contains the UDF Maiden Name
    And I submit a successful credit card transaction for John 'Jones' Smith on page UDF Test 490078
    Then the constituent John Smith should appear as Female with Maiden Name Jones
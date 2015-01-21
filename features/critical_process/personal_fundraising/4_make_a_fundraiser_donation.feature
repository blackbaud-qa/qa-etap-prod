Feature: Making a donation to a fundraiser

  Background:
    Given I have a processor set up in my database
    And a Fundraiser set up in my database named QA Fundraiser [X]
    And I have already registered John Crabtree

  Scenario: making a donation
    Given I am logged into eTap
    When I click Management on the main menu
    And click Fundraisers
    And I click on the QA Fundraiser [X] url
    And I click Make a Donation
    And I select Donate Toward a Team or Individual's Goal
    And I search for John
    And I select Sponsor John Crabtree - Individual
    And I click Next
    And set the following <fields> to these <values>
    And click Next
    And click Next
    And click Next
    Then the donation confirmation page should say: Thank you for your generous donation!

    Examples:
      | fields           | values             |
      | First Name       | Robert             |
      | Last Name        | Howell             |
      | Country          | United States      |
      | Address          | 8771 W. Vine Place |
      | City             | Indianapolis       |
      | State/Province   | Indiana            |
      | Postal Code      | 46220              |
      | Email            | qa-1@blackbaud.com |
      | Phone            | 3173337788         |
      | Donation Type    | One Time           |
      | Donation Amount  | 10                 |
      | Card Type        | Visa               |
      | Card Number      | 4111111111111111   |
      | Security Code    | 543                |
      | Expiration Month | 12                 |
      | Expiration Year  | 2035               |

  Scenario: verify donation is listed on fundraiser
    Given Robert Howell has already made a donation to the QA Fundraiser [X]
    And I am on the donation confirmation page for the QA Fundraiser [X]
    When I click Find a Team/Participant
    And search for John
    And click on John Crabtree
    Then I should see Robert Howell listed as a donor

  Scenario: verify the donation is in the database with the soft credit link
    Given I am logged into eTap
    And Robert Howell has already made a donation to the QA Fundraiser [X]
    When I click Accounts on the main menu
    And type Robert Howell into the Search For field
    And I click Find
    And click on Robert Howell
    And navigate to the Journal page for his account
    And click on the gift marked with Today's date
    And expand the Tribute, Soft Credit, Matching Gift Relationships section
    Then I should see John Crabtree listed under Soft Credit Information


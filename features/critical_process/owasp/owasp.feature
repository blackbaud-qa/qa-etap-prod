Feature: OWASP
  As a QA analyst
  I want to run the OWASP tests
  In order to maintain compliance

  Background:
    Given the default country is set to United States
    And [SECURITY GROUP A] has limited page level rights
    And [SECURITY GROUP B] can only access accounts with sticky code A
    And account [JANE DOE] is marked with sticky code B
    And [SECURITY GROUP C] can only access Individual accounts
    And account [JIM DOE] is marked with the a Business account type

  Scenario: Injection
    Given I login as [ADMIN USER]
    And I am on the persona page of account[JOHN DOE]
    When I enter ' OR 1=1; in <field>
    And press Save and Edit
    Then I should see <result>

  Examples:
  |  field            |  result                                                                                                                         |
  |  address          |  ' OR 1=1;                                                                                                                      |
  |  city             |  ' OR 1=1;                                                                                                                      |
  |  State/Province   |  State / Province: This field must be a valid State/Province/Territory abbreviation.                                            |
  |  Postal Code      |  Postal Code: This field must be a valid Postal Code ( example: 12345 or 12345-6789)                                            |
  |  County           |  ' OR 1=1;                                                                                                                      |
  |  Short Salutation |  ' OR 1=1;                                                                                                                      |
  |  Long Salutation  |  ' OR 1=1;                                                                                                                      |                                               |  Note             |  ' OR 1=1;                                                                                                                      |
  |  Voice            |  Voice: This field must be a valid Phone Number.                                                                                |
  |  Fax              |  Fax: This field must be a valid Phone Number.                                                                                  |
  |  Mobile           |  Mobile: This field must be a valid Phone Number.                                                                               |
  |  Email            |  Email: This field must be a valid email address (like test@test.com) or email addresses (like test2@test.com, test3@test.com). |
  |  Web              |  ' OR 1=1;                                                                                                                      |

  Scenario: Cross-Site Scripting (XSS)
    Given I login as [ADMIN USER]
    And I am on the persona page of account[JOHN DOE]
    When I enter <script>alert ('Yikes!')</script> in the note field
    And press Save and Edit
    Then I should see <script>alert ('Yikes!')</script> saved in the note field

  Scenario: Broken Authentication and Session Management - Limited Page Rights
    Given I login as [USER A]
    And I have clicked on Management
    When I select DIY Forms
    Then I should see the error: Important Notice! You are not authorized to perform the operation you requested.

  Scenario: Broken Authentication and Session Management - Limited code based rights
    Given I login as [USER B]
    When I search for [JANE DOE]
    Then I should see no results found

  Scenario: Broken Authentication and Session Management - Limited query based rights
    Given I login as [USER C]
    When I search for [JIM DOE]
    Then I should see no results found

  Scenario: Insecure Direct Object References
    Given I login as admin [user]
    And I am on the persona page of account [John Doe]
    And I copy the URL from the address bar into the copy buffer (highlight, then ctrl-c)
    And I click Logout
    And I login into another eTapestry database as admin [user 2]
    When I paste the URL from step 2 into the address bar (highlight, then ctrl-v)
    Then the record for the original database is not displayed

  Scenario: Cross-Site Request Forgery (CSRF)
    Given I login as admin [user]
    And I am on the dashboard
    When I without logging out, navigate to the HCR Manor Care web app at:  https://bos.etapestry.com/hcrmanor/Welcome.jsp
    Then the I am Redirected to the HCR Manor Care login page.

  Scenario: Failure to Restrict URL Access
    Given I login as admin [user]
    And I select DIY Form
    And I copy the URL for this page
    And I log out of eTapestry
    When I login in as [User A]
    And I paste the URL from the admin user
    Then I should be directed to the dashboard

  Scenario: Failure to Restrict URL Access
    Given I login as admin [user]
    And I copy the URL
    And I paste the URL into another browser
    Then I should be directed to the login page

  Scenario: Insufficient Transport Layer Protection
    Given I login as admin [User]
    When I change the URL from HTTPS to HTTP
    And hit Enter
    Then I should be Redirected back to eTapestry using HTTPS

Feature: Login into account

  Scenario: Login into account with valid credentials
    Given I'm on login page of herokuapp website
    And I entered valid username "tomsmith" and password "SuperSecretPassword!"
    When I click the login button
    Then I should be taken to the login welcome page

  Scenario Outline: Login into account with invalid credentials
    Given I'm on login page of herokuapp website
    And I entered invalid username "<username>" and password "<password>"
    When I click the login button
    Then I should see error message
    Examples:
      | username  | password  |
      | ''        | ''        |
      | username1 | password1 |
      | username2 | password2 |
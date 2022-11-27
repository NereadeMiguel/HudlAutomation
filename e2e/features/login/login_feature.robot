*** Comments ***
.. code:: robotframework


*** Settings ***
Library             String
Resource            login_keywords.robot

Test Setup          Open browser
Test Teardown       Close browser


*** Test Cases ***
Login with email and password
    [Tags]    login
    Given Set 'TestUser' user login credentials
    Given the user is in the global page
    When the user goes to login page
    And the user enters their credentials
    And the user performs login action
    Then the user is logged correctly

Login with an organization
    [Tags]    login
    Given Set 'TestUser' user login credentials
    Given the user is in the login page
    When the user selects login with an organization
    And the user enters organization credentials
    And the user performs login sso action
    # Next step cannot be verified with my current user.
    # Then the user is logged correctly

Login invalid
    [Tags]    login
    Given the user is in the login page
    When the user performs login action
    Then login invalid message is shown

Reset password
    [Tags]    login
    Given Set 'TestUser' user login credentials
    Given the user is in the login page
    When the user selects help
    And the user sends required field to reset password
    Then check email page is displayed

Remember me
    [Tags]    login
    # I don't understand the logic of how this feature works,
    # but could be something to keep in mind when automation.
    Given Set 'TestUser' user login credentials
    Given the user is in the login page
    When the user enters their credentials
    And the user selects remember credentials
    And the user performs login action
    Then the user is logged correctly
    # And the credentials are perisistent

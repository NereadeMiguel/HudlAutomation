*** Settings ***
Resource    ../../components/pages/login_page.robot
Resource    ../../components/pages/home_page.robot
Resource    ../../components/pages/login_org_page.robot
Resource    ../../components/pages/login_help_page.robot
Resource    ../../components/pages/check_email_page.robot
Resource    ../../components/pages/global_page.robot


*** Keywords ***
# Setup
Set '${user}' user login credentials
    Set test variable    ${EMAIL}    ${USERS['${user}']['email']}
    Set test variable    ${PASSWORD}    ${USERS['${user}']['password']}

# Steps

the user is in the global page
    Go to    ${BASE_URL}

the user is in the login page
    login_page.go

the user enters their credentials
    login_page.fill_email    ${EMAIL}
    login_page.fill_password    ${PASSWORD}

the user performs login action
    login_page.login

the user is logged correctly
    home_page.load

the user selects login with an organization
    login_page.login_sso

the user enters organization credentials
    login_org_page.fill_email    ${EMAIL}

the user performs login sso action
    login_org_page.login

login invalid message is shown
    login_page.load_invalid_message

the user selects help
    login_page.select_help

the user sends required field to reset password
    login_help_page.fill_email    ${EMAIL}
    login_help_page.send_password_reset

check email page is displayed
    check_email_page.load

the user selects remember credentials
    login_page.select_remember

the user goes to login page
    global_page.login

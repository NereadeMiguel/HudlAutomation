*** Settings ***
Resource    page.robot
Resource    ../containers/error_message_container.robot


*** Variables ***
${LOGIN_PAGE_URL}               ${BASE_URL}/login
${EMAIL_FIELD}                  css=[data-qa-id="email-input-label"]
${PASSWORD_FIELD}               css=[data-qa-id="password-input-label"]
${LOGIN_BUTTON}                 css=[data-qa-id="login-btn"]
${LOGIN_INVALID_MESSAGE}        css=[data-qa-id="error-display"]
${MESSAGE_NEED_HELP_LINK}       css=[data-qa-id="error-display"] a
${LOGIN_NEED_HELP_LINK}         css=[data-qa-id="need-help-link"]
${REMEMBER_ME_CHECKBOX}         css=[data-qa-id="remember-me-checkbox-label"]
${LOGIN_ORGANIZATION_BUTON}     css=[data-qa-id="log-in-with-organization-btn"]


*** Keywords ***
go
    go_to_url    ${LOGIN_PAGE_URL}

fill_email
    [Arguments]    ${text}
    input_text_in_field    ${EMAIL_FIELD}    ${text}

fill_password
    [Arguments]    ${text}
    input_text_in_field    ${PASSWORD_FIELD}    ${text}

login
    click_element    ${LOGIN_BUTTON}

login_sso
    click_element    ${LOGIN_ORGANIZATION_BUTON}

load_invalid_message
    error_message_container.load
    contains_element    ${MESSAGE_NEED_HELP_LINK}

select_help
    click_element    ${LOGIN_NEED_HELP_LINK}

select_remember
    click_element    ${REMEMBER_ME_CHECKBOX}

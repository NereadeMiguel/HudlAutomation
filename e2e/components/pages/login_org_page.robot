*** Settings ***
Resource    page.robot


*** Variables ***
${EMAIL_ORGANIZATION_FIELD}     css=[type="email"]
${LOGIN_SSO_BUTTON}             css=[data-qa-id="log-in-with-sso"]


*** Keywords ***
fill_email
    [Arguments]    ${text}
    input_text_in_field    ${EMAIL_ORGANIZATION_FIELD}    ${text}

login
    click_element    ${LOGIN_SSO_BUTTON}

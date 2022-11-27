*** Settings ***
Resource    page.robot


*** Variables ***
${PASSWORD_RESET_IMPUT}     css=[data-qa-id="password-reset-input"]
${PASSWORD_RESET_BUTTON}    css=[data-qa-id="password-reset-submit-btn"]


*** Keywords ***
fill_email
    [Arguments]    ${text}
    input_text_in_field    ${PASSWORD_RESET_IMPUT}    ${text}

send_password_reset
    click_element    ${PASSWORD_RESET_BUTTON}

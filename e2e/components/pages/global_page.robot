*** Settings ***
Resource    page.robot


*** Variables ***
${GLOBAL_LOGIN_BUTTON}      css=[data-qa-id="login"]


*** Keywords ***
login
    click_element    ${GLOBAL_LOGIN_BUTTON}

*** Settings ***
Resource    page.robot


*** Variables ***
${CHECK_EMAIL_URL}      ${BASE_URL}/login/check-email


*** Keywords ***
load
    location_contains    ${CHECK_EMAIL_URL}

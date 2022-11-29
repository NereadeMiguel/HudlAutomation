*** Settings ***
Resource    ../component.robot


*** Keywords ***
location_contains
    [Arguments]    ${url}
    SeleniumLibrary.wait_until_location_contains    ${url}

go_to_url
    [Arguments]    ${url}
    SeleniumLibrary.go_to    ${url}

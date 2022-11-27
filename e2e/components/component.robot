*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
input_text_in_field
    [Arguments]    ${field}    ${text}
    click_element    ${field}
    SeleniumLibrary.press_keys    ${field}    ${text}

click_element
    [Arguments]    ${element}
    SeleniumLibrary.wait_until_page_contains_element    ${element}
    SeleniumLibrary.wait_until_element_is_visible    ${element}
    SeleniumLibrary.click_element    ${element}

contains_element
    [Arguments]    ${element}
    SeleniumLibrary.wait_until_page_contains_element    ${element}

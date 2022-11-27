*** Settings ***
Resource    container.robot


*** Variables ***
${ERROR_MESSAGE_LAYOUT}     css=div[class*=errorDisplayInnerContainer]


*** Keywords ***
load
    contains_element    ${ERROR_MESSAGE_LAYOUT}

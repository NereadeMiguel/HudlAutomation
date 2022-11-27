*** Settings ***
Resource    page.robot


*** Variables ***
${HOME_PAGE_URL}    ${BASE_URL}/home
${HOME_CONTENT}     css=[id="home-content"]


*** Keywords ***
load
    contains_element    ${HOME_CONTENT}
    location_contains    ${HOME_PAGE_URL}

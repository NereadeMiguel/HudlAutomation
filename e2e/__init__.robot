*** Settings ***
Library         OperatingSystem
Resource        ./utils/load_json.robot

Suite Setup     Setup test configuration


*** Variables ***
${ENVIROMENTS_PATH}     ./e2e/data/environment.json
${USERS_PATH}           ./e2e/data/user.json


*** Keywords ***
Setup test configuration
    Set URL global variable
    Load test users

Set URL global variable
    ${urls} =    load_json.load    ${ENVIROMENTS_PATH}
    Set global variable    ${BASE_URL}    ${urls}[${ENVIRONMENT}][url]

Load test users
    ${users} =    load_json.load    ${USERS_PATH}
    Set global variable    ${USERS}    ${users}

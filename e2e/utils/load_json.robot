*** Keywords ***
load
    [Arguments]    ${path}
    ${json}=    Get file    ${path}
    ${object}=    Evaluate    json.loads('''${json}''')    json
    RETURN    ${object}

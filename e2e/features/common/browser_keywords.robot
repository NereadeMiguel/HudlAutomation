*** Keywords ***
Open browser
    IF    '${BROWSER_MODE}'=='real' and '${BROWSER}'=='chrome'
        Open browser in real chrome
    ELSE IF    '${BROWSER_MODE}'=='headless' and '${BROWSER}'=='chrome'
        Open browser in headless chrome
    END

Open browser in headless chrome
    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    headless
    Create WebDriver    Chrome    chrome_options=${options}

Open browser in real chrome
    Create WebDriver    Chrome

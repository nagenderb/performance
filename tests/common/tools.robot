*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Initialize Application
    Log    Initializing shared application
    Sleep    5s
    Log    Shared application initialization complete

Open Application
    Open Application In Browser
    Maximize Browser Window

Login And Prepare Application
    Log    Preparing authenticated session
    Sleep    5s
    Log    Authenticated session ready

Close Application
    Log    Closing browser session
    Close All Browsers

Navigate To Profile
    Click Link    id=profile-link
    Wait Until Page Contains Element    id=page-ready    5s

Navigate To Dashboard
    Click Link    id=dashboard-link
    Wait Until Page Contains Element    id=page-ready    5s

Navigate To Orders
    Click Link    id=orders-link
    Wait Until Page Contains Element    id=page-ready    5s

Navigate To Search
    Click Link    id=search-link
    Wait Until Page Contains Element    id=page-ready    5s

Navigate To Reports
    Click Link    id=reports-link
    Wait Until Page Contains Element    id=page-ready    5s

Wait For Page Ready
    [Arguments]    ${expected}
    Wait Until Page Contains    Page Ready: ${expected}    5s


Open Application In Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Evaluate    $options.add_argument("--headless=new")
    Evaluate    $options.add_argument("--no-sandbox")
    Evaluate    $options.add_argument("--disable-dev-shm-usage")
    Evaluate    $options.add_argument("--disable-gpu")
    Evaluate    $options.add_argument("--window-size=1920,1080")
    Open Browser    browser=chrome    options=${options}

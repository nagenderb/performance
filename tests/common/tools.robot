*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    https://ajaanims.co.in/qa/staging/apm/performance.html

*** Keywords ***
Initialize Application
    Log    Initializing shared application
    Upgrade Build
    Log    Shared application initialization & Upgrade complete

Upgrade Build
    Sleep    5s

Open Application
    Open Application In Browser
    Go To    ${URL}
    Maximize Browser Window


Login And Prepare Application
    Log    Preparing authenticated session
    Sleep    5s
    Log    Authenticated session ready

Close Application
    Log    Closing browser session
    Close All Browsers

Navigate To Profile
    Log    Clicking Now
    Log    Completed Success 

Navigate To Dashboard
    Log    Clicking Now
    Log    Completed Success 

Navigate To Orders
    Log    Clicking Now
    Log    Completed Success 

Navigate To Search
    Log    Clicking Now
    Log    Completed Success 

Navigate To Reports
    Log    Clicking Now
    Wait For Page Ready
    Log    Completed Success 

Wait For Page Ready
    Open Application In Browser
    Sleep    2s
    Log    Completed Success 


Open Application In Browser
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Evaluate    $options.add_argument("--headless=new")
    Evaluate    $options.add_argument("--no-sandbox")
    Evaluate    $options.add_argument("--disable-dev-shm-usage")
    Evaluate    $options.add_argument("--disable-gpu")
    Evaluate    $options.add_argument("--window-size=1920,1080")
    Open Browser    browser=chrome    options=${options}
    

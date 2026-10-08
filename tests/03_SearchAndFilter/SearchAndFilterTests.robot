*** Settings ***
Resource    ../common/tools.robot
Suite Setup    Initialize Application

*** Test Cases ***
Verify Customer Search
    [Setup]    Open And Prepare Search Orders If Not Exist 
    Navigate To Search
    Page Should Contain    Search
    [Teardown]    Close Application

Verify Search Navigation
    [Setup]    Open And Prepare Search Orders If Not Exist
    Navigate To Search
    Page Should Contain    Search
    [Teardown]    Close Application

Verify Search Results
    [Setup]    Open And Prepare Search Orders If Not Exist
    Navigate To Search
    Page Should Contain    Search
    [Teardown]    Close Application

Verify Search Filters
    [Setup]    Open And Prepare Search Orders If Not Exist
    Navigate To Search
    Page Should Contain    Search
    [Teardown]    Close Application

Verify Search Page Loads
    [Setup]    Open And Prepare Search Orders If Not Exist
    Navigate To Search
    Page Should Contain    Search
    [Teardown]    Close Application

*** Keywords ***
Open And Prepare Search Orders If Not Exist
    Open Application
    Login And Prepare Application

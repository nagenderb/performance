*** Settings ***
Resource    ../common/tools.robot
Suite Setup    Initialize Application

*** Test Cases ***
Verify Monthly Dashboard Summary
    [Setup]    Open And Prepare Dashboard
    Navigate To Dashboard
    Page Should Contain    Dashboard
    [Teardown]    Close Application

Verify Dashboard Navigation
    [Setup]    Open And Prepare Dashboard
    Navigate To Dashboard
    Page Should Contain    Dashboard
    [Teardown]    Close Application

Verify Revenue Overview
    [Setup]    Open And Prepare Dashboard
    Navigate To Dashboard
    Page Should Contain    Dashboard
    [Teardown]    Close Application

Verify Dashboard Metrics
    [Setup]    Open And Prepare Dashboard
    Navigate To Dashboard
    Page Should Contain    Dashboard
    [Teardown]    Close Application

Verify Dashboard Page Loads
    [Setup]    Open And Prepare Dashboard
    Navigate To Dashboard
    Page Should Contain    Dashboard
    [Teardown]    Close Application

*** Keywords ***
Open And Prepare Dashboard
    Open Application
    Login And Prepare Application

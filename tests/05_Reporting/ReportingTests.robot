*** Settings ***
Resource    ../common/tools.robot
Suite Setup    Initialize Application

*** Test Cases ***
Verify Sales Reports
    [Setup]    Open And Prepare Reports
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

Verify Reports Navigation
    [Setup]    Open And Prepare Reports
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

Verify Report Summary
    [Setup]    Open And Prepare Reports
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

Verify Report Filters
    [Setup]    Open And Prepare Reports
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

Verify Reports Page Loads
    [Setup]    Open And Prepare Reports
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

*** Keywords ***
Open And Prepare Reports
    Open Application
    Login And Prepare Application

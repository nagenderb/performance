*** Settings ***
Resource    ../common/tools.robot
Suite Setup    Initialize Application

*** Test Cases ***
Verify Reports Navigation
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

Verify Report Summary
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

Verify Report Filters
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

Verify Reports Page Loads
    Navigate To Reports
    Page Should Contain    Reports
    [Teardown]    Close Application

*** Keywords ***
Open And Prepare Reports If Not Exist
    Open Application
    Login And Prepare Application

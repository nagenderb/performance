*** Settings ***
Resource    ../common/tools.robot
Suite Setup    Initialize Application

*** Test Cases ***
Verify Customer Profile Overview
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Contact Information
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Navigation
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Details
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Page Loads
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Menu
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Content
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Route
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Display
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

Verify Customer Profile Access
    [Setup]    Open And Prepare Profile
    Navigate To Profile
    Page Should Contain    Profile
    [Teardown]    Close Application

*** Keywords ***
Open And Prepare Profile
    Open Application
    Login And Prepare Application

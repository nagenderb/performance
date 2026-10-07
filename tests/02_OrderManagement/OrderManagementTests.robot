*** Settings ***
Resource    ../common/tools.robot
Suite Setup    Initialize Application

*** Test Cases ***
Verify Recent Orders
    [Setup]    Open And Prepare Orders If Not Exist
    Navigate To Orders
    Page Should Contain    Orders
    [Teardown]    Close Application

Verify Order History Navigation
    [Setup]    Open And Prepare Orders If Not Exist
    Navigate To Orders
    Page Should Contain    Orders
    [Teardown]    Close Application

Verify Order Details
    [Setup]    Open And Prepare Orders If Not Exist
    Navigate To Orders
    Page Should Contain    Orders
    [Teardown]    Close Application

Verify Order Status Summary
    [Setup]    Open And Prepare Orders If Not Exist
    Navigate To Orders
    Page Should Contain    Orders
    [Teardown]    Close Application

*** Keywords ***
Open And Prepare Orders If Not Exist
    Open Application
    Login And Prepare Application

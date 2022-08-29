*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup     Open my Browser
Suite Teardown  Close Browsers

*** Test Cases ***



*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Error message should be visible

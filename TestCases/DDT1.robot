*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup     Open my Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login

*** Test Cases ***          username            password
Right user empty pwd    admin@yourstore.com     ${EMPTY}
Right user wrong pwd    admin@yourstore.com     xyz
Wrong user right pwd    adm@yourstore.com     admin
Wrong user empty pwd    adm@yourstore.com     ${EMPTY}
Wrong user wrong pwd    adm@yourstore.com     xyz





*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Error message should be visible

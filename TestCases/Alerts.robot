*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 seconds

    Click Element    xpath://button[@onclick='myFunction()']
    Handle Alert    accept
#    Handle Alert    dissmiss
#    Alert Should Be Present     Press a button!





*** Keywords ***
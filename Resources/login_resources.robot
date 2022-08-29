*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://testautomationpractice.blogspot.com/
${BROWSER}      Chrome

*** Keywords ***
Open my Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${LOGIN URL}

Input username
    [Arguments]     ${username}
    Input Text    id:Email    ${username}

Input pwd
    [Arguments]     ${password}
    Input Text    id:Password    ${password}

Click login button
    Click Element    xpath://button[normalize-space()='Log in']

Click logout link
    Click Link    xpath://a[normalize-space()='Logout']

Error message should be visible
    Page Should Contain    Login was unsuccessful

Dashboard page should be visible
    Page Should Contain    Dashboard

    
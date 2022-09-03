*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]     ${SiteURL}  ${Browser}
    Open Browser    ${SiteURL}  ${Browser}
    Maximize Browser Window

Enter User Name
    [Arguments]     ${username}
    Input Text    ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${txt_loginPassword}    ${password}

Click SignIn
    Click Button    ${btn_signIn}

Verify Successful Login
    Title Should Be    EIMS Dashboard

Close my browser
    Close All Browsers
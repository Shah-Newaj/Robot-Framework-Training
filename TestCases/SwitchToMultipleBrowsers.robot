*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Mutiple Browsers
    Open Browser    https://www.google.com/  Chrome
    Maximize Browser Window
    Sleep    2 Seconds

    Open Browser    https://www.bing.com/  Chrome
    Maximize Browser Window

    Switch Browser    1
    ${title}    Get Title
    Log To Console    ${title}

    Switch Browser    2
    ${title2}    Get Title
    Log To Console    ${title2}

    Close All Browsers


*** Keywords ***
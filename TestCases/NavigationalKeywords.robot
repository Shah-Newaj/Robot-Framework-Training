*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Navigation Test
    Set Selenium Speed    1 Seconds
    Open Browser    https://www.google.com/  Chrome
    ${loc}  Get Location
    Log To Console    ${loc}

    Go To    https://www.bing.com/  
    ${loc}  Get Location
    Log To Console    ${loc}

    Go Back
    ${loc}  Get Location
    Log To Console    ${loc}


    Close All Browsers


*** Keywords ***
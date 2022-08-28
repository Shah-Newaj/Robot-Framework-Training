*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demo.nopcommerce.com
${browser}      Chrome

*** Test Cases ***
GetAllLinks
    Open Browser    ${url}      ${browser}
    Maximize Browser Window

    ${AllLinksCount}    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}
    
    FOR    ${counter}    IN RANGE    1    ${AllLinksCount}+1
        ${LinkText}     Get Text    xpath:(//a)[${counter}]
        Log To Console    ${LinkText}
         
    END
    Close All Browsers
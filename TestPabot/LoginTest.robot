*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}  Chrome
${url}  http://dceims.bdeducation.org.bd/schoolAdmin
${username}     marma.newaj@gmail.com
${password}     12345678

*** Test Cases ***
LoginTest
    Open my browser    ${url}    ${browser}
    Enter User Name    ${username}
    Enter Password    ${password}
    Click SignIn
    Sleep    3 seconds
    Verify Successful Login
    Close my browser
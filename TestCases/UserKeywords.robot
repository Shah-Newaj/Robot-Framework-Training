*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}      https://demo.nopcommerce.com/login
${browser}      Chrome

*** Test Cases ***
TC1
    ${PageTitle}  launchBrowser   ${url}    ${browser}
    Log To Console    ${PageTitle}
    Sleep    3
    Input Text    xpath://input[@id='Email']    newajuiucse@gmail.com
    Input Text    xpath://input[@id='Password']    123456

    Sleep    2
    Close All Browsers

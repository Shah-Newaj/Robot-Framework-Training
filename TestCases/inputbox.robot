*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
    ${email_txt}    Set Variable    xpath://input[@id='Email']

    Element Should Be Visible    ${email_txt}
    Element Should Be Enabled    ${email_txt}

    Input Text    ${email_txt}    newajuiucse@gmail.com
    Sleep    3
    Clear Element Text    ${email_txt}
    Sleep    2
    Close Browser

*** Keywords ***

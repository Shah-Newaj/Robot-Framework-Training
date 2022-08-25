*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://demo.automationtesting.in/Windows.html

*** Test Cases ***
Tabbed Windows
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 seconds

    Click Element    xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    Switch Window   url=https://www.selenium.dev/
    Click Element    xpath://span[normalize-space()='Documentation']
    Close All Browsers

*** Keywords ***
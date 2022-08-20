*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://www.opencart.com/index.php?route=account/register

*** Test Cases ***
Handling Dropdown and Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Select From List By Label    country_id     Australia
    Sleep    2
    Select From List By Value    country_id     1
    Sleep    2
    Select From List By Index    country_id     18
    

*** Keywords ***
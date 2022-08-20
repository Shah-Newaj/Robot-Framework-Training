*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://itera-qa.azurewebsites.net/home/automation

*** Test Cases ***
Testing Radio Button and Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 seconds

    #Radio Buttons
    Select Radio Button    optionsRadios    option1

    #Check Boxes
    Select Checkbox    xpath://input[@id='wednesday']
    Select Checkbox    xpath://input[@id='tuesday']

    Unselect Checkbox    xpath://input[@id='wednesday']


*** Keywords ***
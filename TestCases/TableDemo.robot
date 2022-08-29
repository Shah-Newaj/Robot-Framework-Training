*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      Chrome

*** Test Cases ***
GetAllLinks
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    # row number. column number, and data
    ${rows}     Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}     Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${cols}

    ${data}     Get Text    xpath://td[normalize-space()='Master In Selenium']
    Log To Console    ${data}

    #table validations
    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author
    Table Row Should Contain    xpath://table[@name='BookTable']    4    Learn JS
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    3    Selenium
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName


    Close All Browsers
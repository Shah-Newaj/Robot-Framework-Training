*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  Chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    
    Select Frame    packageListFrame   # id name xpath
    Click Link    org.openqa.selenium
    Unselect Frame

    Select Frame    packageFrame   # id name xpath
    Click Link    WebDriver
    Unselect Frame

    Select Frame    classFrame   # id name xpath
    Click Link    Help
    Unselect Frame


*** Keywords ***
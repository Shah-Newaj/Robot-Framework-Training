*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://dceims.bdeducation.org.bd/schoolAdmin

*** Test Cases ***
LoginTest
    open browser  ${url}    ${browser}
    LogIntoApplication
    close browser

*** Keywords ***
LogIntoApplication
    input text  xpath://input[@placeholder='Email/User ID']  marma.newaj@gmail.com
    input text  xpath://input[@id='password']  12345678
    click element  xpath://button[@type='submit']
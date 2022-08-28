*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html
${browser}      Chrome

*** Test Cases ***
Scrolling Test
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

#    Execute Javascript  window.scrollTo(0,2500)
#    Scroll Element Into View    xpath://img[@alt='Flag of Bangladesh']     #Find Bangladesh

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)   #end of the page
    Sleep    3
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)  #starting of the page
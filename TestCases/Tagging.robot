*** Settings ***

*** Test Cases ***

#robot --include sanity  TestCases/Tagging.robot
#robot --include regression  TestCases/Tagging.robot
#robot -i sanity -i regression  TestCases/Tagging.robot
#robot -e regression  TestCases/Tagging.robot

TC1 User RegistrationTest
    [Tags]  regression
    Log To Console    This is user registration Test
    Log To Console    User Registration Test is over

TC2 Login Test
    [Tags]  sanity
    Log To Console    This is Login Test
    Log To Console    Login Test is over

TC3 Change User Seetings
    [Tags]  regression
    Log To Console    This is Change User Seetings Test
    Log To Console    Change User Seetings Test is over

TC4 Logout Test
    [Tags]  sanity
    Log To Console    This is Logout Test
    Log To Console    Logout Test Test is over
*** Settings ***

*** Variables ***

*** Test Cases ***
#ForLoop1
#    FOR    ${i}    IN RANGE    1    10
#        Log To Console    ${i}
#    END
    
#ForLoop2withList
#    @{List}     Create List     1   2   3   4   5
#    FOR    ${i}    IN    @{LIST}
#        Log To Console   ${i}
#
#    END

#ForLoop3Strings
#    @{List}     Create List     Shah  Newaj
#    FOR    ${element}    IN    @{LIST}
#        Log To Console   ${element}
#
#    END

ForLoop4withExit
    @{List}     Create List     1   2   3   4   5
    FOR    ${i}    IN    @{LIST}
        Log To Console   ${i}
        Exit For Loop If    ${i}==3
    END
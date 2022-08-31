*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem


Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database


*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   root
${DBHost}   LocalHost
${DBPort}   3306

*** Test Cases ***
#Create Person Table
#    ${output}  Execute Sql String    Create table person(id integer,first_name varchar(20),last_name varchar(20))
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

Inserting data in person table
    ${output}  Execute Sql String    Insert into person values(101,"Shah","Newaj");
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

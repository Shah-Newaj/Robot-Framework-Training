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

#Inserting data in person table
    #Single Record
#    ${output}  Execute Sql String    Insert into person values(101,"Shah","Newaj");

    #Multiple Records
#    ${output}  Execute Sql Script    ./TestData/mydb_person_insertData.sql
#
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

#Check Record present in table
#    Check If Exists In Database    select id from mydb.person where first_name="Shah"
#
#Check Record not present in table
#    Check If Not Exists In Database    select id from mydb.person where first_name="Harun"
#
#Check table in database
#    Table Must Exist    person

#Update record in person table
#    ${output}  Execute Sql String    Update mydb.person set last_name="Newaj" where id="103";
#    Log To Console    ${output}
#    Should Be Equal As Strings    ${output}    None

Retrieve Records from person table
    ${queryResult}  Query    select * from mydb.person
    Log To Console    ${queryResult}
*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}   mydb
${DBUser}   root
${DBPass}   root
${DBHost}   LocalHost
${DBPort}   3306
*** Settings ***
Documentation    CSV examples for Robot Framework.
Library         Collections
Library         CSVLibrary
Library         Selenium2Library

Resource          ../resources.robot

*** Test Cases ***
Read csv file to 
#    @{list}=  read csv file to list  ${CURDIR}${/}data_1.csv
    ${all users}=    read csv file to list    ${CURDIR}\\..\\csv\\data_1.csv
    :FOR  ${user}   in   @{all users}
    \    Open Browser               @{user}[0]    @{user}[1]
    \    Maximize Browser Window
    \    Set Selenium Speed         ${DELAY}
    \    Capture Page Screenshot    ${SCREENSHOT_PATH_1}\\@{user}[2]
    \    Close Browser
    Log    Exited
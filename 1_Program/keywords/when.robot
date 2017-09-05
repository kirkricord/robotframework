*** Settings ***
Library     Selenium2Library
Library     OperatingSystem

Resource    ../resources.robot

*** Keywords ***
User creates and sent a new email to second account
    [Documentation]    This keyword create a new email and send to
    ...                second account of the Global IT Corp Mail Server 
    Wait Until Page Contains    Redactar    5
    Click Element    rcmbtn110
    Input Text       _to    ${ADDRESSEE_1}
    Input Text       compose-subject    ${SUBJECT}
    Input Text       composebody    ${MAIL_TEXT}
    Click Element    rcmbtn110
    
User creates and sent a new email to first account
    [Documentation]    This keyword create a new email and send to
    ...                first account of the Global IT Corp Mail Server
    Wait Until Page Contains    Redactar    5
    Click Element    rcmbtn110
    Input Text       _to    ${ADDRESSEE_2}
    Input Text       compose-subject    ${SUBJECT}
    Input Text       composebody    ${MAIL_TEXT}
    Click Element    rcmbtn110
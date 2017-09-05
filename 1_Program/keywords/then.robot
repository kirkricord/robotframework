*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Library     BuiltIn

Resource    ../resources.robot

*** Keywords ***
Verify the email was sent to second account
    [Documentation]    This keyword just verify that email was sent to
    ...                second account of the Global IT Corp Mail Server
    Wait Until Element Is Enabled    rcmliRW52aWFkb3M
    Sleep                            3s
    Click Element                    rcmliRW52aWFkb3M
    Sleep                            3s
    Capture Page Screenshot	         ${SCREENSHOT_PATH_2}\\globalitcorp-{index}.png
    Close Browser 
 
Verify the email was sent to first account
    [Documentation]    This keyword just verify that email was sent to
    ...                first account of the Global IT Corp Mail Server
    Wait Until Element Is Enabled    rcmliRW52aWFkb3M
    Sleep                            3s
    Click Element                    rcmliRW52aWFkb3M
    Sleep                            3s
    Capture Page Screenshot	         ${SCREENSHOT_PATH_3}\\globalitcorp-{index}.png
    Close Browser
    
The captures should be appears in screenshot directory
    [Documentation]    this keyword verify the screenshots appears in the given path
    ...                the ${count} value depends the cycle iteration
    ${count} =  Count Files In Directory    ${SCREENSHOT_PATH_1}
    Run Keyword If    '${count}' == '2'    Log    Pass
*** Settings ***
Library     Selenium2Library
Library     OperatingSystem
Library     BuiltIn

Resource    ../resources.robot

*** Keywords ***
Launch browser at specified page
    [Documentation]    This keyword receive 3 arguments and launch browser 
    ...                at specified page
    [Arguments]    ${URL}    ${BROWSER}    ${SCREENSHOT_NAME_WITH_EXTENSION}
    Open Browser               ${URL}    ${BROWSER}
    Maximize Browser Window
	Set Selenium Speed         ${DELAY}
    Capture Page Screenshot    ${SCREENSHOT_PATH_4}\\${SCREENSHOT_NAME_WITH_EXTENSION}
	Close Browser

Browser is open
    [Documentation]    This keyword only open the browser
    Open Browser    ${URL}    ${BROWSER_1}

Enter a correct user and valid password to first account
    [Documentation]    This keyword introduces the correct credentials of 
    ...                the first account to Global IT Corp Mail Server
    Input Text        rcmloginuser    ${VALID_USER_FA}
    Input Password    rcmloginpwd    ${VALID_PASSWORD}
    Click Button      rcmloginsubmit
    Sleep             2s

Enter a correct user and valid password to second account
    [Documentation]    This keyword introduces the correct credentials of 
    ...                the second account to Global IT Corp Mail Server
    Input Text        rcmloginuser    ${VALID_USER_SA}
    Input Password    rcmloginpwd    ${VALID_PASSWORD}
    Click Button      rcmloginsubmit
    Sleep             2s
 
Clean Environment
    [Documentation]    This keyword remove all files of screenshot directory
    Remove Files      ${SCREENSHOT_PATH_1}\\*.png
    Remove Files      ${SCREENSHOT_PATH_2}\\*.png
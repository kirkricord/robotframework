*** Variables ***
${BROWSER_A}    gc
${BROWSER_B}    ff
${DELAY_1}    0
${SCREENSHOT_PATH_5}    ${CURDIR}\\reports_simple_program_2\\screenshot

*** Settings ***
Library    Selenium2Library
Library    OperatingSystem

Suite Teardown    Clean Environment

*** Test Cases ***
Open Panama America Newspaper page on Google Chrome
    Open Browser    http://www.panamaamerica.com.pa/    ${BROWSER_A}
    Maximize Browser Window
	Set Selenium Speed    ${DELAY_1}
    Capture Page Screenshot     ${SCREENSHOT_PATH_5}\\panamaamerica.png
	Close Browser
    
Open La Estrella de Panama Newspaper page on Firefox
    Open Browser    http://laestrella.com.pa/    ${BROWSER_B}
    Maximize Browser Window
	Set Selenium Speed    ${DELAY_1}
    Capture Page Screenshot     ${SCREENSHOT_PATH_5}\\laestrella.png
	Close Browser

Open Dia a Dia Newspaper page on Google Chrome
    Open Browser    http://www.diaadia.com.pa/    ${BROWSER_A}
    Maximize Browser Window
	Set Selenium Speed    ${DELAY_1}
    Capture Page Screenshot     ${SCREENSHOT_PATH_5}\\diadia.png
	Close Browser
        
*** Keywords ***
Clean Environment
    Close all browsers
 
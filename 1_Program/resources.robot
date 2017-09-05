*** Variables ***
${BROWSER_1}            gc
${BROWSER_2}            ff
${SCREENSHOT_PATH_1}    ${CURDIR}\\reports_CSVExampleTest\\screenshot
${SCREENSHOT_PATH_2}    ${CURDIR}\\reports_globalitcorp_user1\\screenshot
${SCREENSHOT_PATH_3}    ${CURDIR}\\reports_globalitcorp_user2\\screenshot
${SCREENSHOT_PATH_4}    ${CURDIR}\\reports_simple_program_1\\screenshot

${DELAY}                0
${VALID_USER_FA}        robot1
${VALID_USER_SA}        robot2
${VALID_PASSWORD}       12345
${URL}                  https://www.gbitcorp.net/mail/
${ADDRESSEE_1}          robot2@gbitcorp.com
${ADDRESSEE_2}          robot1@gbitcorp.com
${SUBJECT}              FYI
${MAIL_TEXT}            Automation_Test

*** Settings ***
Resource                keywords/given.robot
Resource                keywords/when.robot
Resource                keywords/then.robot
*** Settings ***
Documentation     This test case just verify the behavior of local mail server
...               sending test emails 
Resource          ../resources.robot

Suite Setup       Clean Environment

*** Test Cases ***
Send email to second account of Global IT Corp from to Local Mail Server
    :FOR    ${i}    IN RANGE    999999
    \    Given browser is open 
    \    And enter a correct user and valid password to first account
    \    When user creates and sent a new email to second account
    \    Then verify the email was sent to second account
    \    Exit For Loop If    ${i} == 1
    \    Log    ${i}
    The captures should be appears in screenshot directory
    Log    Exited
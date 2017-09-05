*** Settings ***
Documentation     This test case just verify the behavior of local mail server
...               sending test emails 
Resource          ../resources.robot

Suite Setup       Clean Environment

*** Test Cases ***
Send email to first account of Global IT Corp from to Local Mail Server
    :FOR    ${j}    IN RANGE    999999
    \    Given browser is open 
    \    And enter a correct user and valid password to second account
    \    When user creates and sent a new email to first account
    \    Then verify the email was sent to first account
    \    Exit For Loop If    ${j} == 1
    \    Log    ${j}
    The captures should be appears in screenshot directory
    Log    Exited
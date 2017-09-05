*** Settings ***
Resource    ../resources.robot

*** Test Cases ***
Validate Selenium2Library in any browser
    [Template]   Launch browser at specified page
    http://www.prensa.com/    gc    prensa.png
    http://www.midiario.com/    ff    midiario.png
    http://elsiglo.com.pa/    gc    elsiglo.png
 
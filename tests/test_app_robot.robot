*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Library           SeleniumLibrary

*** Variables ***
${SERVER}         
${BROWSER}        Firefox
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${INDEX URL}      https://${SERVER}/
${DISCOVER URL}    https://${SERVER}/

*** Keywords ***
Go to Website
    Open Browser    ${INDEX URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

*** Test Cases ***

Visit Website
    Go to Website
    Location Should Be    ${INDEX URL}
    Title Should Be    Air Navigation
    [Teardown]    Close Browser


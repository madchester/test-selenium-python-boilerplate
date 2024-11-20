*** Settings ***
Documentation     This is a resource file, that can contain variables and keywords.
...               Keywords defined here can be used where this Keywords.resource in loaded.

Library           SeleniumLibrary
# Library           Remote    http://localhost:4445    1 minute    AS    selenium-hub

*** Variables ***
${SERVER}         
${BROWSER}        Firefox
${DELAY}          0
${VALID USER}     demo
${VALID PASSWORD}    mode
${HOST NAME}    https://${SERVER}/
${INDEX URL}      ${HOST NAME}en/
${DISCOVER URL}    https://${SERVER}/
${REMOTE URL}    http://localhost:4445/wd/hub

*** Keywords ***
Go to Website
    Open Browser    url=${HOST NAME}    browser=${BROWSER}    remote_url=${REMOTE URL}    desired_capabilities=browser:firefox
    # Maximize Browser Window
    Set Selenium Speed    ${DELAY}

*** Test Cases ***

Visit Website
    Go to Website
    Location Should Be    ${INDEX URL}
    Title Should Be    Sample Title
    [Teardown]    Close Browser


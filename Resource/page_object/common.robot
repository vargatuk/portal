*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}   https://staging.prozorro.gov.ua
${BROWSER}    Chrome

*** Keywords ***

Start TestCase
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Finish TestCase
    Close Browser
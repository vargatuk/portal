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

Перевірка сторінки після переходу
    [Documentation]   Порівняння фактичної з очікуваної сторінки
    [Arguments]   ${page_url}   ${msg}
    ${url}=     get location
    Should Be True    '${page_url}' in '${url}'    msg=${msg}
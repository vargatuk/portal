*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CALENDAR_URL}    https://staging.prozorro.gov.ua/calendar
${locator.title}                    xpath=//div[@id='calendar']



*** Keywords ***
Очікувваний результат події на сторінці
    [Documentation]    Перевіряємо наявність календаря на сторінці
    Wait until element is visible    ${locator.title}    timeout=20

Url страницы
    [RETURN]    ${CALENDAR_URL}
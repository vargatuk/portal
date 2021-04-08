*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${calendar_URL}    https://staging.prozorro.gov.ua/calendar
${locator.calendar}                    xpath=//div[@id='calendar']



*** Keywords ***
Очікувваний результат події на сторінці
    [Documentation]    Перевіряємо наявність календаря на сторінці
    Wait until element is visible    ${locator.calendar}    timeout=20

Url страницы
    [RETURN]    ${calendar_URL}
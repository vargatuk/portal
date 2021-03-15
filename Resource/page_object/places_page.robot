*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${places_URL}    https://staging.prozorro.gov.ua/for-places
${locator.places}                    xpath=



*** Keywords ***
Очікувваний результат Майданчикам
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.places}    timeout=20

Url страницы
    [RETURN]    ${places_URL}
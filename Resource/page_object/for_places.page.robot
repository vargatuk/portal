*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${for_URL}    https://staging.prozorro.gov.ua/for-places
${locator.for}                    xpath=//div[@class='container']



*** Keywords ***
Очікувваний результат Майданчикам
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.for}    timeout=20

Url страницы
    [RETURN]    ${for_URL}
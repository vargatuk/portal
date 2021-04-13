*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${openprocurement_URL}    https://staging.prozorro.gov.ua/openprocurement
${locator.openprocurement}                    xpath=//div[@class='block_desc']



*** Keywords ***
Очікувваний результат Розробникам
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.openprocurement}    timeout=20

Url страницы
    [RETURN]    ${openprocurement_URL}
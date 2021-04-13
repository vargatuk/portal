*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${zahist_URL}    https://staging.prozorro.gov.ua/zahist-uchasnikiv
${locator.zahist}                    xpath=//h3[@class='title']



*** Keywords ***
Очікувваний результат Захист учасників
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.zahist}    timeout=20

Url страницы
    [RETURN]    ${zahist_URL}
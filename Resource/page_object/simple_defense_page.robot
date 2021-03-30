*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${simple_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=simple.defense
${locator_simple}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Спрощені торги із застосуванням електронної системи закупівель на сторінці відображається
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator_simple}    timeout=20

Url страницы
    [RETURN]    ${simple_URL}
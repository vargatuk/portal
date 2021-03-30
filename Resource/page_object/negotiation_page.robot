*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${negotiation_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=negotiation
${locator.negotiation}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Переговорна процедура на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.negotiation}    timeout=20

Url страницы
    [RETURN]    ${negotiation_URL}
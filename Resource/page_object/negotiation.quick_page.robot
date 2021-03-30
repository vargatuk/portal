*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${negotiation.quick_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=negotiation.quick
${locator.negotiation.quick}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Переговорна процедура (скорочена) на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.negotiation.quick}    timeout=20

Url страницы
    [RETURN]    ${negotiation.quick_URL}
*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${aboveThresholdUA_defense_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=aboveThresholdUA.defense
${locator_aboveThresholdUA_defense}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Переговорна процедура для потреб оборони на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator_aboveThresholdUA_defense}    timeout=20

Url страницы
    [RETURN]    ${aboveThresholdUA_defense_URL}
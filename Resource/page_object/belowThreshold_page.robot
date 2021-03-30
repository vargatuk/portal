*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${belowThreshold_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=belowThreshold
${locator.belowThreshold}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Спрощена/Допорогова закупівля на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.belowThreshold}    timeout=20

Url страницы
    [RETURN]    ${belowThreshold_URL}
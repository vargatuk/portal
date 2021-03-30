*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${competitiveDialogueUA_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=competitiveDialogueUA
${locator.competitiveDialogueUA}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Конкурентний діалог 1-ий етап на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.competitiveDialogueUA}    timeout=20

Url страницы
    [RETURN]    ${competitiveDialogueUA_URL}
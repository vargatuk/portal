*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${competitiveDialogueUA.stage2_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=competitiveDialogueUA.stage2
${locator.competitiveDialogueUA.stage2}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Конкурентний діалог 2-ий етап на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.competitiveDialogueUA.stage2}    timeout=20

Url страницы
    [RETURN]    ${competitiveDialogueUA.stage2_URL}
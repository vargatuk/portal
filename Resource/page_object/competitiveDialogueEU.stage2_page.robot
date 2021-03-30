*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${competitiveDialogueEU.stage2_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=competitiveDialogueEU.stage2
${locator.competitiveDialogueEU.stage2}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Конкурентний діалог з публікацією англійською мовою 2-ий етап на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.competitiveDialogueEU.stage2}    timeout=20

Url страницы
    [RETURN]    ${competitiveDialogueEU.stage2_URL}
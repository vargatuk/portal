*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${competitiveDialogueEU_URL}    https://staging.prozorro.gov.ua/search/tender?proc_type=competitiveDialogueEU
${locator.competitiveDialogueEU}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат тип закупівлі Конкурентний діалог з публікацією англійською мовою 1-ий етап на сторінці
    [Documentation]    Перевіряємо наявність назви типу закупівлі на сторінці
    Wait until element is visible    ${locator.competitiveDialogueEU}    timeout=20

Url страницы
    [RETURN]    ${competitiveDialogueEU_URL}
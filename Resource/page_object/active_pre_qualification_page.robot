*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${pre_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.pre-qualification
${locator_pre}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Прекваліфікація відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_pre}    timeout=20

Url страницы
    [RETURN]    ${pre_URL}
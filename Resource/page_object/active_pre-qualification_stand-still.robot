*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${pre-qualification_stand-still_URL}    https://staging.prozorro.gov.ua/search/tender?status=active.pre-qualification.stand-still
${locator_pre-qualification_stand-still}                    xpath=//p[@class='search-preview__item--text']



*** Keywords ***
Очікувваний результат статус Прекваліфікація (період оскарження) відображається на сторінці
    [Documentation]    Перевіряємо наявність відображення статусу на сторінці
    Wait until element is visible    ${locator_pre-qualification_stand-still}    timeout=20

Url страницы
    [RETURN]    ${pre-qualification_stand-still_URL}
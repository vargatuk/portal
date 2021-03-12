*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${infobox_URL}    https://infobox.prozorro.org/
${locator.app-header}                    xpath=//header[@id='app-header']



*** Keywords ***
Очікувваний результат Нове на Інфобоксі на сторінці
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.app-header}    timeout=20

Url страницы
    [RETURN]    ${infobox_URL}
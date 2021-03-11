*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${infobox_URL}    https://infobox.prozorro.org/
${locator.title}                    xpath=//h2[text()='Нове на Інфобоксі']



*** Keywords ***
Очікувваний результат Нове на Інфобоксі на сторінці
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.title}    timeout=20

Url страницы
    [RETURN]    ${infobox_URL}
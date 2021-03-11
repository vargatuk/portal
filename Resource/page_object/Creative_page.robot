*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CREATIVE_URL}    https://www.blacklibrary.com/
${locator.title}                    xpath=//button[@id='acceptcookiesbtn']



*** Keywords ***
Очікувваний результат Творча Спілка на сторінці
    [Documentation]    Перевіряємо інформації на сторінці
    Wait until element is visible    ${locator.title}    timeout=20

Url страницы
    [RETURN]    ${CREATIVE_URL}
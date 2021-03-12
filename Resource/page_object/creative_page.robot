*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${blacklibrary_URL}    https://www.blacklibrary.com/
${locator.acceptcookiesbtn}                    xpath=//button[@id='acceptcookiesbtn']



*** Keywords ***
Очікувваний результат Творча Спілка на сторінці
    [Documentation]    Перевіряємо інформації на сторінці
    Wait until element is visible    ${locator.acceptcookiesbtn}    timeout=20

Url страницы
    [RETURN]    ${blacklibrary_URL}
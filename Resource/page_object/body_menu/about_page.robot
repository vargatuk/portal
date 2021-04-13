*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${about_URL}    https://staging.prozorro.gov.ua/about
${locator.about}                    xpath=//div[@class='lang']



*** Keywords ***
Очікувваний результат Про нас на сторінці
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.about}    timeout=20

Url страницы
    [RETURN]    ${about_URL}
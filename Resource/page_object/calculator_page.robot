*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${CALCULATOR_URL}    https://cep.kse.ua/gaz/
${locator.title}                    xpath=//div[@class='mdl-layout__drawer']



*** Keywords ***
Очікувваний результат Калькулятор вартості газу на сторінці
    [Documentation]    Перевіряємо інформації на сторінці
    Wait until element is visible    ${locator.title}    timeout=20

Url страницы
    [RETURN]    ${CALCULATOR_URL}
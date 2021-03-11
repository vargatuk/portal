*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${PROZORROMARKET_URL}    https://staging.prozorro.gov.ua/ProzorroMarket
${locator.title}                    xpath=//a[@class='link_element']



*** Keywords ***
Очікувваний результат Prozorro Market на сторінці
    [Documentation]    Перевіряємо інформації на сторінці
    Wait until element is visible    ${locator.title}    timeout=20

Url страницы
    [RETURN]    ${PROZORROMARKET_URL}
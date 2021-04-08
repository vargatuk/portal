*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${bugbounty_URL}    https://staging.prozorro.gov.ua/bugbounty
${locator.bugbounty}                    xpath=//div[@class='tabs block_form_tabs']



*** Keywords ***
Очікувваний результат Bug bounty на сторінці
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.bugbounty}    timeout=20

Url страницы
    [RETURN]    ${bugbounty_URL}
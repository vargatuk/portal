*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${organizaciya_URL}    https://staging.prozorro.gov.ua/centralizovana-zakupivelna-organizaciya
${locator.organizaciya}                    xpath=//div[@class='block_text_common bg_grey ']//div//h3 [@class='title']



*** Keywords ***
Очікувваний результат Prozorro Market інструмент ЦЗО
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.organizaciya}    timeout=20

Url страницы
    [RETURN]    ${organizaciya_URL}
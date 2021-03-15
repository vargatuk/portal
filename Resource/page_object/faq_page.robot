*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${faq_URL}    https://staging.prozorro.gov.ua/faq
${locator.faq}                    xpath=//div[@class='block_text_news block_faq_answer']



*** Keywords ***
Очікувваний результат Запитання та відповіді
    [Documentation]    Перевіряємо наявність інформації на сторінці
    Wait until element is visible    ${locator.faq}    timeout=20

Url страницы
    [RETURN]    ${faq_URL}
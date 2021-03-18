*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${MAIN_URL}    https://staging.prozorro.gov.ua/



*** Keywords ***
Вибір і перехід по верхньому меню
    [Documentation]    Вибір і перехід по верхньому меню
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']
    sleep    5

Вибір і перехід по нижньому меню
    [Documentation]    Вибір і перехід по нижньому меню
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//li[@class='page-footer__list-item']//a[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//li[@class='page-footer__list-item']//a[text()='${locator_text}']
    sleep    5



Вибір категорії закупівель
    [Documentation]    Вибір категорії закупівель
    [Arguments]   ${main_category_text}    ${children_category_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'${main_category_text}')]    timeout=20
    CLICK ELEMENT      xpath=//button[contains(@class,'category-purchases__item')][contains(text(),'${main_category_text}')]
    Wait until element is visible    xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'${children_category_text}')]    timeout=20
    CLICK ELEMENT      xpath=//button[contains(@class,'category-purchases__link')][contains(text(),'${children_category_text}')]
    Wait until element is visible    xpath=//p[@class='search-preview__item--text']    timeout=20
    ${filter_text}=    GET TEXT      xpath=//p[@class='search-preview__item--text']
    log to console    ${filter_text}
    Should Be True   '${children_category_text}' in '${filter_text}'    msg='Після переходу на сторінку не співпадають назви вибрані'



*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${MAIN_URL}    https://staging.prozorro.gov.ua/
${searh_tender_url}    https://staging.prozorro.gov.ua/search/tender?status=
${locator.click_status}    xpath=//label[@for='status']
${locator.click_status_in_list}    xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']
${locator.filter_content_text}    xpath=//p[@class='search-preview__item--text']
${locator.click_region}    xpath=//label[@for='region']
${locator.click_procurementMethodType}    xpath=//label[@for='proc_type']
${locator.click_procuringentity}    xpath=//label[@for='edrpou']



*** Keywords ***
Вибір і перехід по верхньому меню
    [Documentation]    Вибір і перехід по верхньому меню
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']


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
    ${count} =  Get Element Count   xpath=//p[@class='search-preview__item--text']
    log to console    .
    log to console    сколько категорий
    log to console    ${count}
    log to console    children
    log to console    ${children_category_text}
    FOR  ${index}  IN RANGE  ${count}
       ${filter_text}=    GET TEXT      xpath=(//p[@class='search-preview__item--text'])[${index+1}]
       Exit For Loop If    '${filter_text.split(' - ')[1]}' in '${children_category_text}'
    END
    Should Be True   '${filter_text.split(' - ')[-1]}' in '${children_category_text}'    msg='Після переходу на сторінку не співпадають вибрані назви'

Перехід на сторінку статусу по урлу
    [Documentation]    Передаємо відповідний статус і переходимо на сторінку по урлу
    [Arguments]    ${url_status}
    ${url_with_status}=    Catenate    SEPARATOR=    ${searh_tender_url}${url_status}
    Go To    ${url_with_status}
    [RETURN]    ${url_with_status}

Пошук статусу по назві вибираємо вручну
    [Documentation]    Пошук статусу по назві
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.click_status}
    CLICK ELEMENT      ${locator.click_status}
    Wait until element is visible    xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']
    sleep    5

Порівняння тексту фільтра
    [Documentation]    В результаті відбувається порівняння з результатом видачі
    [Arguments]    ${exepted_text}
    ${filter_text}=     Get text    ${locator.filter_content_text}
    Should Be Equal    first='${filter_text}'    second='${exepted_text}'   msg='При порівнянні текста фільтра виникла помилка, не відповідає фактичний результат очікуваному'

Пошук регіона по назві вибираємо вручну
    [Documentation]    Пошук регіона по назві вибираємо вручну та порівнюємо із заданим результатом
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.click_region}
    CLICK ELEMENT      ${locator.click_region}
    Wait until element is visible    xpath=//ul[@class='filter-popup__preview-list']//li[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//ul[@class='filter-popup__preview-list']//li[text()='${locator_text}']
    sleep    5

Пошук типу закупівлі вибираємо вручну
    [Documentation]    Вибір виду закупівлі і порівняння з заданим результатом
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.click_procurementMethodType}
    CLICK ELEMENT      ${locator.click_procurementMethodType}
    Wait until element is visible    xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//ul[@class='filter-popup__preview-list filter-popup__preview-list_simple']//li[text()='${locator_text}']
    sleep    5

Пошук по назві замовника
    [Documentation]    Вибір та пошук замовника по коду ЄДРПОУ
    [Arguments]   ${locator_text}
    GO TO   ${MAIN_URL}
    Wait until element is visible    ${locator.click_procuringentity}
    CLICK ELEMENT      ${locator.click_procuringentity}
    input text    xpath=//input[@id='edrpou']    Test Division Organization
    Wait until element is visible    xpath=//li[@class='filter-popup__preview-item']    timeout=20
    CLICK ELEMENT      xpath=//li[@class='filter-popup__preview-item']
    sleep    5


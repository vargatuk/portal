*** Settings ***
Library     SeleniumLibrary


*** Variables ***

#${locator.email}                    css=[name="email"]
#${locator.password}                 css=[name="password"]
#${locator.submit_btn}               css=[id="submit_button"]


*** Keywords ***
Вибір і перехід по верхньому меню
    [Documentation]    Вибір і перехід по верхньому меню
    [Arguments]   ${locator_text}
    Wait until element is visible    xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//nav[@class='desktop-nav']//a[text()='${locator_text}']
    sleep    5

Вибір і перехід по нижньому меню
    [Documentation]    Вибір і перехід по нижньому меню
    [Arguments]   ${locator_text}
    Wait until element is visible    xpath=//li[@class='page-footer__list-item']//a[text()='${locator_text}']    timeout=20
    CLICK ELEMENT      xpath=//li[@class='page-footer__list-item']//a[text()='${locator_text}']
    sleep    5

#Перейти на вкладку категорії закупівель
    #[Documentation]    Перейти на вкладку категорії закупівель
    #[Arguments]   ${locator_text}
    #Wait until element is visible    xpath=//h2[text()='Категорії закупівель']//div[text()='${locator_text}']    timeout=20
   # CLICK ELEMENT      xpath=//h2[text()='Категорії закупівель']//div[text()='${locator_text}']
    #sleep    5
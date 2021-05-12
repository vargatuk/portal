*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot
Resource   ../page_object/heder_menu/news_page.robot
Resource   ../page_object/heder_menu/calendar_page.robot
Resource   ../page_object/heder_menu/prozorromarket_page.robot
Resource   ../page_object/heder_menu/infobox_page.robot


Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Перейти на вкладку Новин
    Вибір і перехід по верхньому меню    Новини
    [Documentation]    Перейти на вкладку Новин
    [Tags]    heder_menu
    Перевірка сторінки після переходу    news    msg='некоректне посилання'
    Очікувваний результат Новин на сторінці

Перейти на вкладку Події
    Вибір і перехід по верхньому меню    Події
    [Documentation]    Перейти на вкладку Події
    [Tags]    heder_menu
    Перевірка сторінки після переходу    calendar    msg='некоректне посилання'
    Очікувваний результат події на сторінці

Перейти на вкладку Маркет
    Вибір і перехід по верхньому меню    Prozorro Market
    [Documentation]    Перейти на вкладку Prozorro Market
    [Tags]    heder_menu
    Перевірка сторінки після переходу    ProzorroMarket    msg='некоректне посилання'
    Очікувваний результат Маркет на сторінці

Перейти на вкладку Інфобокс
    Вибір і перехід по верхньому меню    Інфобокс
    [Documentation]    Перейти на вкладку Інфобокс
    [Tags]    heder_menu
    Перевірка сторінки після переходу    infobox    msg='некоректне посилання'
    Очікувваний результат Нове на Інфобоксі на сторінці

Перейти на вкладку Калькулятор вартості газу
    Вибір і перехід по верхньому меню    Калькулятор вартості газу
    [Documentation]    Перейти на вкладку Калькулятор вартості газу
    [Tags]    heder_menu
    Перевірка сторінки після переходу    cep    msg='некоректне посилання'







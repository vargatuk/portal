*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot
Resource   ../page_object/news_page.robot
Resource   ../page_object/calendar_page.robot
Resource   ../page_object/infobox_page.robot
Resource   ../page_object/prozorroMarket_page.robot
Resource   ../page_object/calculator_page.robot
Resource   ../page_object/creative_page.robot

Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Перейти на вкладку Новин
    Вибір і перехід по верхньому меню    Новини
    Перевірка сторінки після переходу    news    msg='некоректне посилання'
    Очікувваний результат Новин на сторінці

Перейти на вкладку Події
    Вибір і перехід по верхньому меню    Події
    Перевірка сторінки після переходу    calendar    msg='некоректне посилання'
    Очікувваний результат події на сторінці

Перейти на вкладку ProzorroMarket
    Вибір і перехід по верхньому меню    ProzorroMarket
    Перевірка сторінки після переходу    prozorroMarket    msg='некоректне посилання'
    Очікувваний результат ProzorroMarket на сторінці

Перейти на вкладку Інфобокс
    Вибір і перехід по верхньому меню    Інфобокс
    Перевірка сторінки після переходу    infobox    msg='некоректне посилання'
    Очікувваний результат Нове на Інфобоксі на сторінці

Перейти на вкладку Калькулятор вартості газу
    Вибір і перехід по верхньому меню    Калькулятор вартості газу
    Перевірка сторінки після переходу    cep    msg='некоректне посилання'
    Очікувваний результат Калькулятор вартості газу на сторінці

Перейти на вкладку Творча Спілка
    Вибір і перехід по верхньому меню    Творча Спілка
    Перевірка сторінки після переходу    blacklibrary    msg='некоректне посилання'
    Очікувваний результат Творча Спілка на сторінці




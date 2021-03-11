*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot
Resource   ../page_object/news_page.robot

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

Перейти на вкладку Prozorro Market
    Вибір і перехід по верхньому меню    Prozorro Market
    Перевірка сторінки після переходу    calendar    msg='некоректне посилання'
    Очікувваний результат події на сторінці

Перейти на вкладку Інфобокс
    Вибір і перехід по верхньому меню    Інфобокс
    Перевірка сторінки після переходу    infobox    msg='некоректне посилання'
    Очікувваний результат Нове на Інфобоксі на сторінці

#Перейти на вкладку Калькулятор вартості газу
    #Вибір і перехід по верхньому меню    Калькулятор вартості газу

#Перейти на вкладку Творча Спілка
    #Вибір і перехід по верхньому меню    Творча Спілка




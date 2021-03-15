*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot
Resource   ../page_object/news_page.robot

Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***

Перейти на вкладку Будівництво
    Вибір категорії закупівель    Будівництво    Продукти переробки нафти та вугілля

Перейти на вкладку Медицина
    Вибір категорії закупівель    Медицина    Фармацевтична продукція

Перейти на вкладку Меблі
    Вибір категорії закупівель    Меблі    Офісні меблі

Перейти на вкладку Комп'ютерна техніка
    Вибір категорії закупівель    Комп'ютерна техніка    Офісна техніка

Перейти на вкладку Канцелярія та госптовари
    Вибір категорії закупівель    Канцелярія та госптовари    Офісне приладдя та канцелярія

Перейти на вкладку Транспорт та запчастини
    Вибір категорії закупівель    Транспорт та запчастини    Легкові автомобілі

Перейти на вкладку Енергетика, нафтопродукти та паливо
    Вибір категорії закупівель    Енергетика, нафтопродукти та паливо     Тверде паливо

Перейти на вкладку Метали
    Вибір категорії закупівель    Метали     Паливна деревина

Перейти на вкладку Комунальне та побутове обслуговування
    Вибір категорії закупівель    Комунальне та побутове обслуговування     Утилізація сміття

Перейти на вкладку Одяг, взуття та текстиль
    Вибір категорії закупівель    Одяг, взуття та текстиль     Одяг

Перейти на вкладку Промислове обладнання та прилади
    Вибір категорії закупівель    Промислове обладнання та прилади     Сонячна енергія

Перейти на вкладку Харчування
    Вибір категорії закупівель    Харчування     Молочні продукти

Перейти на вкладку Поліграфія
    Вибір категорії закупівель    Поліграфія     Періодичні видання

Перейти на вкладку Науково-дослідні роботи
    Вибір категорії закупівель    Науково-дослідні роботи     Науково-дослідні роботи

Перейти на вкладку Різні послуги та товари
    Вибір категорії закупівель     Різні послуги та товари     Товари для дозвілля
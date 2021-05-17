*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Обрати Замовникам та перейти на сторінку
    [Documentation]    перейти на сторінку з інформаціює для Замовника
    [Tags]   customers
    Перехід на сторінку для замовника       Замовникам

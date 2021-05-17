*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Обрати постачальникам та перейти на сторінку
    [Documentation]    перейти на сторінку з інформаціює для постачальника
    [Tags]   suppliers
    Перехід на сторінку для постачальника       Постачальникам


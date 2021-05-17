*** Settings ***
Resource   ../page_object/main.robot
Resource   ../page_object/common.robot




Test Setup       Start TestCase
Test Teardown    Finish TestCase


*** Test Cases ***
Перейти на сторінку Майданчики Prozorro
    [Documentation]    Перейти на сторінку Майданчики Prozorro
    [Tags]   majdanchiki_prozorro
    Перехід на сторінку Майданчики Prozorro     Підібрати майданчик

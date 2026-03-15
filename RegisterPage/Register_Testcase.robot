*** Settings ***
Library                    SeleniumLibrary
Resource                   ${CURDIR}/Register_Keyword.robot
Suite Setup                Set Selenium Speed    0.2s
Test Setup                 Open Website Page                    ${url_register}
Test Teardown              Close Browser
Suite Teardown             Close All Browsers


*** Test Cases ***
Verify Default Register Page
    [Documentation]    TC-REGIS-001 การแสดงรายละเอียดหน้า Register
    Default Register Page

Verify Register Pass Case
    [Documentation]    TC-REGIS-002 การลงทะเบียนสมัครสมาชิกสำเร็จ
    [Setup]
    [Template]         Register Pass Case
    test@example.com            TEST123#                 TEST123#
    tt___@example.com           TEST123#HELLO            TEST123#HELLO
    1234@example.com            TEST123#                 TEST123#
    TEST@example.com            TEST123#                 TEST123#
    [Teardown]
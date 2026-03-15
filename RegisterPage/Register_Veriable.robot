*** Variables ***
${url_register}                     https://dev.app.agnoshealth.com/ai_dashboard/agnos/sign_up
${browser}                          gc
${logo_register}                    xpath=//*[@id="root"]/div/div/div/div[1]/img
${locator_email}                    id=Email
${locator_password}                 xpath=/html/body/div/div/div/div/div[2]/div[2]/div[2]/input
${locator_showPassword}             xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/img
${locator_confirmPassword}          xpath=/html/body/div/div/div/div/div[2]/div[2]/div[3]/input
${locator_showConfirmPassword}      xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[3]/img
${locator_btn_confirm}              xpath=//*[@id="root"]/div/div/div/div[2]/div[3]/button/div
${locator_msg_email}                xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[1]/div[2]
${locator_msg_password}             xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/div[2]
${locator_msg_ConfirmPassword}      xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[3]/div[2]


# Message
${msg_email}                        The email should be in the format 'test@example.com'
${msg_password}                     The password must be at least 8 characters long and include at least one uppercase letter, one digit, and one special character.
${msg_confirmPassword}              Confirm password does not match the password.
${msg_createSuccess}                xpath=//*[@id="root"]/div/div[2]/div/div
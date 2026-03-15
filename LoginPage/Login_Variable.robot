*** Variables ***
${url_login}                        https://dev.app.agnoshealth.com/ai_dashboard/login/
${browser}                          gc
${logo_login}                       xpath=//*[@id="root"]/div/div/div/div[1]/img
${locator_email}                    id=Email
${locator_password}                 id=password
${locator_showPassword}             xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/img
${locator_btn_Signin}               xpath=//*[@id="root"]/div/div/div/div[2]/div[3]/button
${locator_err_msg}                  xpath=//*[@id="root"]/div/div/div/div[2]/div[2]/div[2]/div[2]


# Error Message
${msg_login}                        Wrong email or password. Please try again
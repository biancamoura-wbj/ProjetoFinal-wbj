signin = SignInPage.new

Dado("clico em entrar") do
    signin.click_signin
  end
  
  Quando("preencho {string} e {string}") do |name_login, password_login|
    signin.fill_fields_login(name_login, password_login)
  end
  
  Quando("clico no botão") do
    signin.click_button_signin
  end

  Então("devo fazer login sucesso") do
    signin.success_login
  end

  
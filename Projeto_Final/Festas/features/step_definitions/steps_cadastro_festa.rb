signup = CreateAccount.new

  Dado("que acesso a pagina principal") do
    signup.access_page
  end

  Dado("clico em criar conta") do
    signup.access_create_account
  end

  Quando("prencho {string}, {string}, {string}, {string} e {string}") do |name, last_name, email, password, confirm_password|
    signup.fill_fields(name, last_name, email, password, confirm_password)
  end

  Quando("prencho nome, sobrenome, email, senha e confirmar senha") do
    signup.fake_fields
  end

  Quando("clico no botão criar conta") do
    signup.click_but
  end

  Então("devo ver a mensagem {string}") do |message|
    signup.alert(message)
  end
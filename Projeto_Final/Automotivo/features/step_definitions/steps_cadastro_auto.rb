createAccount = CreateAccount.new

Dado("que estou na {string}") do |string|
    visit '/'
end
  
Quando("quero realizar um cadastro") do
    createAccount.BtnCreate
end

Quando("preencho nome, sobrenome, email, senha, confirma_senha") do
    createAccount.FieldsFake
end

Quando("preencho {string}, {string}, {string}, {string}, {string}") do |name, lastname, email_ad, passwrd, confirm_pass|
    createAccount.FieldsSchema(name, lastname, email_ad, passwrd, confirm_pass)
  end
  
Então("devo ler a mensagem {string}") do |messageOK|
    createAccount.ResultOK(messageOK)
end

Então("devo ler {string}") do |messageError|
    createAccount.ResultError(messageError)
end
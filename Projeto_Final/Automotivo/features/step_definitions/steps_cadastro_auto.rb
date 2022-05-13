CreateAccount = CreateAccount.new

Dado("que estou na {string}") do |string|
    visit '/'
end
  
Dado("quero realizar um cadastro") do
   CreateAccount.Account
end

Dado("preencho nome {string} e sobrenome {string}") do |name, lastname|
    CreateAccount.FieldsName(name, lastname)
end
  
Dado("preencho {string} e {string}") do |email, password|
    CreateAccount.FieldsEmail(email, password)
end

Então("devo ser cadastrado com sucesso") do
    CreateAccount.AccountSucess
end
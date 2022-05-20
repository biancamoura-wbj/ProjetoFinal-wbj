Dado("clico em entrar") do
    @signin.accessSignIn
  end
  
  Quando("preencho {string} e {string}") do |email, senha|
    @signin.form(email, senha)
  end

  Quando("clico no botão entre") do
    @signin.clickButton
  end

  #Então("devo ver a mensagem {string}") do |mesagem|
   # @signin.alertLogin(mesagem)
  #end

  
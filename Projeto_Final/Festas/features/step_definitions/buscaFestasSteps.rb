Quando("busco por {string}") do |message|
    @search.searchProduct(message)
end

Quando("clico em pesquisar") do
    @search.clickButton
end
  
Então("vejo produto na tela") do
    @pending # Write code here that turns the phrase above into concrete actions
end
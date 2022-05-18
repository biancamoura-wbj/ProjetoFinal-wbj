search = SearchProduct.new

Quando("busco por {string}") do |message|
    search.search_product(message)
  end
  
  Então("vejo produto na tela") do
    pending # Write code here that turns the phrase above into concrete actions
  end
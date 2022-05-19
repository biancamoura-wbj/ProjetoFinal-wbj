#language: pt

@carrinho
Funcionalidade: Carrinho

@produto_catalogo_logado
Cenario: Adicionar 1 tipo de produto ao carrinho direto do catalogo
Dado que acesso a pagina principal
E clico em entrar
Quando preencho 'maliriq@mailinator.com' e 'Pa$$w0rd!'
E clico no botão entre
E escolho um produto
E clico em adicionar ao carrinho
Então devo ver a mensagem 'Você precisa escolher as opções para o seu item.'
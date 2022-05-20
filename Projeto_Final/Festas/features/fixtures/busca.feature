#language: pt

@busca
Funcionalidade: Busca

#Usuário logado

@BuscaValidaLogado
Cenario: Busca valida logado no sistema
Dado que acesso a pagina principal
E clico em entrar
Quando preencho 'maliriq@mailinator.com' e 'Pa$$w0rd!'
E clico no botão entre
E busco por "produto" válido
E clico em pesquisar
Então vejo produto na tela

@BuscaInvalidaLogado
Cenario: Busca invalida logado no sistema
Dado que acesso a pagina principal
E clico em entrar
Quando preencho 'maliriq@mailinator.com' e 'Pa$$w0rd!'
E clico no botão entre
E busco por "produto" invalido
E clico em pesquisar
Então devo ver a mensagem "A sua pesquisa não retornou resultados."

#Usuário não logado

@BuscaValidaDeslogado
Cenario: Busca valida não logado no sistema
Dado que acesso a pagina principal
Quando busco por "produto" valido
E clico em pesquisar
Então vejo produto na tela

@BuscaInvalidaDeslogado
Cenario: Busca invalida não logado no sistema
Dado que acesso a pagina principal
Quando busco por "produto"
E clico em pesquisar
Então devo ver a mensagem "A sua pesquisa não retornou resultados."
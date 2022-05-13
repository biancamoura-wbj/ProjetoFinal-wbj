#language: pt

Funcionalidade: Realizar Cadastro

    @cadSucesso
    Cenário: Cadastro Com Sucesso
        Dado que estou na 'pagina inicial' 
        E quero realizar um cadastro
        E preencho nome 'Henrique' e sobrenome 'Ribeiro'
        E preencho 'henrique.reis@webjump.com.br' e 'minhasenha1A@'
        Então devo ser cadastrado com sucesso 
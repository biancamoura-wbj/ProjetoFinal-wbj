#language: pt

@cadastro
Funcionalidade: Realizar Cadastro

    @cadVazios
        Esquema do Cenário: Campos Obrigatórios
        Dado que estou na 'pagina inicial'
        Quando quero realizar um cadastro 
        E preencho '<nome>', '<sobrenome>', '<email>', '<senha>', '<confirmar_senha>'
        Então devo ler '<mensagem>'

        Exemplos: Dados Ausentes
        |nome    |sobrenome|email                       |senha   |confirmar_senha|mensagem                 |
        |        |         |                            |        |               |Esse campo é obrigatório.|
        |        |Ribeiro  |henrique.reis@webjump.com.br|pa$$Wrd!|pa$$Wrd!       |Esse campo é obrigatório.|
        |Henrique|         |henrique.reis@webjump.com.br|pa$$Wrd!|pa$$Wrd!       |Esse campo é obrigatório.|
        |Henrique|Ribeiro  |                            |pa$$Wrd!|pa$$Wrd!       |Esse campo é obrigatório.|
        |Henrique|Ribeiro  |henrique.reis@webjump.com.br|        |pa$$Wrd!       |Esse campo é obrigatório.|
        |Henrique|Ribeiro  |henrique.reis@webjump.com.br|pa$$Wrd!|               |Esse campo é obrigatório.|

        @cadInvalido
        Esquema do Cenário: Cadastro Inválido
            Dado que estou na 'pagina inicial'
            Quando quero realizar um cadastro 
            E preencho '<nome>', '<sobrenome>', '<email>', '<senha>', '<confirmar_senha>'
            Então devo ler '<mensagem>'

        Exemplos: Dados Inválidos
        |nome    |sobrenome|email                       |senha   |confirmar_senha|mensagem                                                     |
        |Henrique|Ribeiro  |ribeiro                     |pa$$wrdA|pa$$wrdA       |Por favor insira um endereço de email válido                 |
        |Henrique|Ribeiro  |henrique.reis@webjump.com.br|pass    |pass           |Comprimento mínimo deste campo deve ser igual ou maior       |
        |Henrique|Ribeiro  |henrique.reis@webjump.com.br|password|password       |O mínimo de classes de caracteres diferentes na palavra-passe|
        |Henrique|Ribeiro  |henrique.reis@webjump.com.br|Pa$$wrd!|Pa$$wrd!       |Já existe uma conta com este endereço de e-mail              |

    
        @cadSucesso
        Cenário: Cadastro Válido
        Dado que estou na 'pagina inicial'
        Quando quero realizar um cadastro 
        E preencho nome, sobrenome, email, senha, confirma_senha
        Então devo ler a mensagem 'Obrigado por registrar'
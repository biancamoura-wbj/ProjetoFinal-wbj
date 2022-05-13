#language: pt

Funcionalidade: Tela de Login - Campo Obrigatório

@login_obrigatorio
Esquema do Cenario: Não preencher campos obrigatorios
Dado que acesso a pagina principal
E clico em entrar
Quando preencho "<email>" e "<password>"
E clico no botão
Então devo ver a mensagem "<message>"

Exemplos:
| email                | password | message                   |
|                      |          | Esse campo é obrigatório. |
|                      | Abc1234* | Esse campo é obrigatório. |
| qatyz@mailinator.com |          | Esse campo é obrigatório. |
#language: pt

Funcionalidade: Tela de Cadastro - Campo Obrigatório

@obrigatorio
Esquema do Cenario: Não preencher campos obrigatórios
Dado que acesso a pagina principal
E clico em criar conta
Quando prencho "<name>", "<last_name>", "<email>", "<password>" e "<confirm_password>"
E clico no botão criar conta
Então devo ver a mensagem "<message>"

Exemplos:
| name     | last_name | email                | password | confirm_password | message                   |
|          |           |                      |          |                  | Esse campo é obrigatório. |
|          | Moura     | qatyz@mailinator.com | Abc1234* | Abc1234*         | Esse campo é obrigatório. |
| Bianca   |           | qatyz@mailinator.com | Abc1234* | Abc1234*         | Esse campo é obrigatório. |
| Bianca   | Moura     |                      | Abc1234* | Abc1234*         | Esse campo é obrigatório. |
| Bianca   | Moura     | qatyz@mailinator.com |          | Abc1234*         | Esse campo é obrigatório. |
| Bianca   | Moura     | qatyz@mailinator.com | Abc1234* |                  | Esse campo é obrigatório. |
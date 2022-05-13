#language: pt

Funcionalidade: Tela de Cadastro - E-mail já cadastrado

@cadastro_existente
Esquema do Cenario: E-mail já cadastrado
Dado que acesso a pagina principal
E clico em criar conta
Quando prencho "<name>", "<last_name>", "<email>", "<password>" e "<confirm_password>"
E clico no botão criar conta
Então devo ver a mensagem "<message>"

Exemplos:
| name     | last_name | email                | password  | confirm_password | message                                                                                                                                                      |
| Bianca   | Moura     | qatyz@mailinator.com | Abcd1234* | Abcd1234*        | Já existe uma conta com este endereço de e-mail. Se você tem certeza que é o seu endereço de e-mail, clique aqui para obter sua senha e acessar a sua conta. |
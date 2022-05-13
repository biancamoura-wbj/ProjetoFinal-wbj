#language: pt

Funcionalidade: Tela de Login - Dados inválidos

@login_invalido
Esquema do Cenario: Preencher dados inválidos
Dado que acesso a pagina principal
E clico em entrar
Quando preencho "<email>" e "<password>"
E clico no botão
Então devo ver a mensagem "<message>"

Exemplos:
| email                     | password | message                                                                                                                         |
| qatyzmailinator.com       | abc      | Por favor insira um endereço de email válido (Ex: exemplo@dominio.com).                                                         |
| qatyz@mailinator.com      | abc      | O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde. |
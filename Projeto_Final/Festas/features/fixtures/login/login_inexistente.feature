#language: pt

Funcionalidade: Tela de Login - Dados inexistentes

@login_inexistente
Esquema do Cenario: Preencher dados inexistentes
Dado que acesso a pagina principal
E clico em entrar
Quando preencho "<email>" e "<password>"
E clico no botão
Então devo ver a mensagem "<message>"

Exemplos:
| email                     | password       | message                                                                                                                        |
| vubijujimu@mailinator.com | Abc1234*       | O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde.|
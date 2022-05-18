#language: pt
@login
Funcionalidade: Tela de Login

Contexto: Pagina Principal
Dado que acesso a pagina principal
E clico em entrar

@login_inexistente
Esquema do Cenario: Preencher dados inexistentes
Quando preencho "<email>" e "<password>"
E clico no botão entre
Então devo ver a mensagem "<message>"

Exemplos:
| email                     | password       | message                                                                                                                        |
| vubijujimu@mailinator.com | Abc1234*       | O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde.|

@login_invalido
Esquema do Cenario: Preencher dados inválidos
Quando preencho "<email>" e "<password>"
E clico no botão entre
Então devo ver a mensagem "<message>"

Exemplos:
| email                     | password | message                                                                                                                         |
| qatyzmailinator.com       | abc      | Por favor insira um endereço de email válido (Ex: exemplo@dominio.com).                                                         |
| qatyz@mailinator.com      | abc      | O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde. |

@login_obrigatorio
Esquema do Cenario: Não preencher campos obrigatorios
Quando preencho "<email>" e "<password>"
E clico no botão entre
Então devo ver a mensagem "<message>"

Exemplos:
| email                | password | message                   |
|                      |          | Esse campo é obrigatório. |
|                      | Abc1234* | Esse campo é obrigatório. |
| qatyz@mailinator.com |          | Esse campo é obrigatório. |

@login_sucesso
Esquema do Cenario: Realizar login com sucesso
Quando preencho "<email>" e "<password>"
E clico no botão entre
Então devo fazer login sucesso

Exemplos:
| email                   | password  |
| maliriq@mailinator.com  | Pa$$w0rd! |
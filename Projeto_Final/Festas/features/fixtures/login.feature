#language: pt
@login
Funcionalidade: Tela de Login

Contexto: Pagina Principal
Dado que acesso a pagina principal
E clico em entrar

@LoginInexistente
Cenario: Preencher dados inexistentes
Quando preencho "vubijujimu@mailinator.com" e "Abc1234*"
E clico no botão entre
Então devo ver a mensagem "O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde."

@LoginInvalido
Esquema do Cenario: Preencher dados inválidos
Quando preencho "<email>" e "<password>"
E clico no botão entre
Então devo ver a mensagem "<message>"

Exemplos:
| email                     | password | message                                                                                                                         |
| qatyzmailinator.com       | abc      | Por favor insira um endereço de email válido (Ex: exemplo@dominio.com).                                                         |
| qatyz@mailinator.com      | abc      | O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde. |

@LoginObrigatorio
Esquema do Cenario: Não preencher campos obrigatorios
Quando preencho "<email>" e "<password>"
E clico no botão entre
Então devo ver a mensagem "<message>"

Exemplos:
| email                | password | message                   |
|                      |          | Esse campo é obrigatório. |
|                      | Abc1234* | Esse campo é obrigatório. |
| qatyz@mailinator.com |          | Esse campo é obrigatório. |

@LoginSucesso
Cenario: Realizar login com sucesso
Quando preencho 'maliriq@mailinator.com' e 'Pa$$w0rd!'
E clico no botão entre
Então devo ver a mensagem "Minha Conta"
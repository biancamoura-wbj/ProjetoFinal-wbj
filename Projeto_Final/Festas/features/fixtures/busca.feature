#language: pt

@busca
Funcionalidade: Busca

#Usuário logado

@busca_valida_logado
Esquema do Cenario: Busca valida logado no sistema
Dado que acesso a pagina principal
E clico em entrar
Quando preencho "<email>" e "<password>"
E clico no botão entre
E busco por "<produto>"
Então vejo produto na tela

Exemplos:
| email                   | password  | produto |
| maliriq@mailinator.com  | Pa$$w0rd! |         |

@busca_invalida_logado
Esquema do Cenario: Busca invalida logado no sistema
Dado que acesso a pagina principal
E clico em entrar
Quando preencho "<email>" e "<password>"
E clico no botão entre
E busco por "<produto>"
Então devo ver a mensagem "<message>"

Exemplos:
| email                   | password | produto   | message                                 |
| maliriq@mailinator.com  | Pa$$w0rd! | camiseta | A sua pesquisa não retornou resultados. |

#Usuário não logado

@busca_valida_naologado
Esquema do Cenario: Busca valida não logado no sistema
Dado que acesso a pagina principal
Quando busco por "<produto>"
Então vejo produto na tela

Exemplos:
| produto |
|         |

@busca_invalida_naologado
Esquema do Cenario: Busca invalida não logado no sistema
Dado que acesso a pagina principal
Quando busco por "<produto>"
Então devo ver a mensagem "<message>"

Exemplos:
| produto           |
| camiseta          |
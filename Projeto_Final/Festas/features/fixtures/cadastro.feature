#language: pt
@cadastro
Funcionalidade: Tela de Cadastro

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

@invalido
Esquema do Cenario: Dados inválidos
Dado que acesso a pagina principal
E clico em criar conta
Quando prencho "<name>", "<last_name>", "<email>", "<password>" e "<confirm_password>"
E clico no botão criar conta
Então devo ver a mensagem "<message>"

Exemplos:
| name     | last_name | email                | password | confirm_password | message                   |
| Bianca   | Moura     | qatyzmailinator.com  | abc      | abc              | Comprimento mínimo deste campo deve ser igual ou maior que 8 símbolos. Espaços a esquerda e a direita serão ignorados.                                   |
| Bianca   | Moura     | qatyzmailinator.com  | Abc1234* | Abc1234*         | Por favor insira um endereço de email válido (Ex: exemplo@dominio.com).                                                                                  |
| Bianca   | Moura     | qatyz@mailinator.com | abcd1234 | abcd1234         | O mínimo de classes de caracteres diferentes na palavra-passe é 3. As classes de caracteres são: Minúsculas, Maiúsculas, Números, Caracteres Especiais.   |

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

@senha_diferente
Esquema do Cenario: Preencher senhas diferentes
Dado que acesso a pagina principal
E clico em criar conta
Quando prencho "<name>", "<last_name>", "<email>", "<password>" e "<confirm_password>"
E clico no botão criar conta
Então devo ver a mensagem "<message>"

Exemplos:
| name     | last_name | email                | password  | confirm_password | message                             |
| Bianca   | Moura     | qatyz@mailinator.com | Abcd1234* | Abcd1234         | Por favor, digite a senha novamente |

@sucesso
Cenario: Cadastro com sucesso
Dado que acesso a pagina principal
E clico em criar conta
Quando prencho nome, sobrenome, email, senha e confirmar senha
E clico no botão criar conta
Então devo ver a mensagem 'Obrigado por registrar-se com Festas Store.'
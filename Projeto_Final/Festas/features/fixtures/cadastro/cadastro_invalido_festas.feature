#language: pt

Funcionalidade: Tela de Cadastro - Dados Inválidos

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

#language: pt

Funcionalidade: Tela de Cadastro - Cadastro com sucesso

@sucesso
Cenario: Cadastro com sucesso
Dado que acesso a pagina principal
E clico em criar conta
Quando prencho nome, sobrenome, email, senha e confirmar senha
E clico no botão criar conta
Então devo ver a mensagem 'Obrigado por registrar-se com Festas Store.'
#language: pt
#utf-8

@Challenge
Funcionalidade: Operações no Sistema
	Eu como administrador
	Quero obter acesso a OrangeHRM
	Para adicionar e alterar a lista de empregados

@Adicionar 
Cenario: Adicionar usuario
	Dado que eu acesse o site da OrangeHrm
	E que esteja na tela de Add Employee
	Quando inserir os dados do usuario
	E enviar os dados a serem salvos
	Entao o novo usuário será cadastrado
	E estará na tela de Personal Details

	

@Alterar
Cenario: Alterar usuario
	Dado que eu acesse o site da OrangeHrm
	E que esteja no Employee List
	Quando pesquisar na lista de empregados
	E clicar no usuário retornado 
	E realizar as alterações deste usuario
	Entao os dados serão atualizados 

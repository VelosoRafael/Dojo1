#language: pt
#utf-8

@Exercicio2
Funcionalidade: Cadastrar usuario no ToolsQa
	Eu como um QA
	Quero preciso criar um novo usuário
	Para obter acesso aos cursos disponiveis

Cenario: Cadastrar usuário
	Dado que eu esteja na pagina principal da ToolsQA
	Quando pressionar o botao de registration
	E preencher os campos necessários
	E enviar os dados de cadastro
	Entao terei um novo user criado
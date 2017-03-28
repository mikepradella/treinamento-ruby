#language: pt
#utf-8


Funcionalidade: Cadastrar novo empregado

	Eu como administrador 
	Quero  cadastar  um novo empregado
	Para armazenar no sistema

Cenario: cadastar novo empregado no sistema	
	Dado que esteja no site (https://enterprise-demo.orangehrmlive.com/)
	Quando navego ate os formularios e preencho os campos obrigatorios
	Entao  validar cadastro realizado com sucesso




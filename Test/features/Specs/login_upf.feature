#language :pt

Funcionalidade: Fazer login no site da UPF
Eu como aluno 
Quero acessar o ambiente do aluno

@login_upf
Cenário: Fazer login
Dado que um aluno
|email |152094 |
|senha |Darskull1|
Quando fazer login
Então validar login
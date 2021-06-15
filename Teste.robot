*** Settings ***
Resource  resource.robot

*** Test cases ***
Abrir o conquista
  Acessar a pagina do cadastro
Fazer login
  Login
Acessar a Senha
  Digitar senha
Conferir campos
  Visualizar o campo dados cadastrais 
  Visualizar card de pontos
  Visualizar o campo perfil do investidor
  Visualizar campo parceiro de negocios
#Validar Usuario
 # Visualizo o nome do cliente
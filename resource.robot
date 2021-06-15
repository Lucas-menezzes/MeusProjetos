*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           http://dev.repositorio.conquista.sciensa.click/#/perfil
${browser}       chrome
${cpf}           332.444.528-09
${login}         name=login
${Button_login}  class=MuiButton-label
${Texto}         id=root
${Input_Senha}   name=password
${Senha}         senha123  

*** Keywords ***
Acessar a pagina do cadastro
  Open Browser    ${URL}  ${browser}
Login
  input text           ${login}  ${cpf}  
  Click Element        ${Button_login}
  Wait Until Element Is Visible  locator=${Input_Senha}  timeout=5s 
Digitar senha
  Input Password  ${Input_Senha}  ${Senha}
  Click Element   ${Button_login}
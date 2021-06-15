*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               http://dev.repositorio.conquista.sciensa.click/#/perfil
${browser}           chrome
${cpf}               332.444.528-09
${login}             name=login
${Button_login}      class=MuiButton-label
${Texto}             id=root
${Input_Senha}       name=password
${Senha}             senha123  
${CardDadosCad}      class=sc-gKckTs.dXARFf.sc-lgasUg.KcpVh
${CardPontos}        class=sc-ezHhQD.bOQhlA
${CardPerfil.inves}  class=sc-PZstE.cBQPca
${CardParceiro}      class=sc-fmWevp.gHAfOX

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
Visualizar o campo dados cadastrais 
  Wait Until Element Is Visible  locator=${CardDadosCad}  timeout=5s
  Element Should Be Visible   ${CardDadosCad}
Visualizar card de pontos
  Wait Until Element Is Visible  locator=${CardPontos}  timeout=5s
  Element Should Be Visible   ${CardPontos}
Visualizar o campo perfil do investidor
  Wait Until Element Is Visible  locator=${CardPerfil.inves}  timeout=5s
  Element Should Be Visible       ${CardPerfil.inves}
Visualizar campo parceiro de negocios
  Wait Until Element Is Visible  locator=${CardParceiro}  timeout=5s
  Element Should Be Visible      ${CardParceiro}

*** Settings ***
Resource    ../resources/keywords/login_resources.robot
Resource    ../resources/pages/login_variaveis.robot
Resource    ../resources/keywords/navigation_resource.robot
Variables   ../fixtures/environments.yaml

Suite Setup    Abrir Navegador    url=${LOGIN.url}${LOGIN.endpoint}
Suite Teardown    Fechar o navegador

*** Test Cases ***
TC01 - Realizar login com sucesso Admin
   Realizar login   ${MAIL}    ${PASSWORD} 
   
#TC02 - Realizar login com senha inválida
#    Realizar login sem sucesso   ${MAIL}    ${PASSWORD_INVALID}
#    
#TC03 - Realizar login com email inválido
#    Realizar login sem sucesso    ${MAIL_INVALID}   ${PASSWORD}
   

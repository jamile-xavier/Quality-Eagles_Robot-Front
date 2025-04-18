*** Settings ***
Resource    ../keywords/company_resources.robot
Resource    ../pages/company_variaveis.robot
Resource    ../pages/login_variaveis.robot
Resource    ../keywords/navigation_resource.robot
Variables   ../../fixtures/environments.yaml
Library    ../../libs/get_fake_company.py

Suite Setup     Abrir o navegador e realizar login    user=${MAIL}    password=${PASSWORD}    url=${LOGIN.url}${LOGIN.endpoint}    browser=chrome
Suite Teardown    Fechar o navegador

*** Test Cases ***
#TC01 - Realizar cadastro de empresa com sucesso
#    Navegar Para Página    url=${COMPANY.url}    url_complementar=${COMPANY.endpoint}
#    Realizar cadastro de empresa    ${company}


TC02 - Consultar Lista de Empresas com sucesso
    Navegar Para Página    url=${COMPANY.url}    url_complementar=${COMPANY.endpoint}
    Wait Until Element Is Visible    class:css-nhyiur 
    Capture Page Screenshot    prints/listar-empresas-sucesso.png
   



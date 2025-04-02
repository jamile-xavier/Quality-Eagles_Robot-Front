*** Settings ***
Library    SeleniumLibrary
Library    libs/get_fake_company.py
Resource    ../pages/company_variaveis.robot

*** Keywords ***
Realizar cadastro de empresa 
    [Documentation]       Keyword usada para realizar cadastro de uma empresa
    [Arguments]    ${company}   
    Wait Until Element Is Visible    class:css-nhyiur    timeout=30s 
    Click Button    ${btnNovoRegistro}
    Wait Until Element Is Visible    class:css-ffwpz9
    ${company}    Get Fake Company
    Input Text    ${cadastroEmpresa.razaoSocial}    ${company}[corporateName] 
    Input Text    ${cadastroEmpresa.nomeFantasia}    ${company}[fantasyName] 
    Input Text    ${cadastroEmpresa.email}    ${company}[corporateEmail]
    Input Text    ${cadastroEmpresa.cnpj}    ${company}[cnpj]
    Input Text    ${cadastroEmpresa.telefone}    ${company}[phone]     
    Input Text    ${cadastroEmpresa.descricaoServico}    ${company}[serviceDescription]
    Input Text    ${cadastroEmpresa.nomeResponsavel}    ${company}[responsibleName] 
    Input Text    ${cadastroEmpresa.cep}    ${company}[zipCode]
    Input Text    ${cadastroEmpresa.pais}    Brasil
    Input Text    ${cadastroEmpresa.cidade}    ${company}[city]
    Input Text    ${cadastroEmpresa.estado}    ${company}[state]
    Input Text    ${cadastroEmpresa.bairro}    ${company}[neighborhood]
    Input Text    ${cadastroEmpresa.rua}    ${company}[street]
    Input Text    ${cadastroEmpresa.numeroImovel}    ${company}[number]
    Input Text    ${cadastroEmpresa.complemento}    Loja
    Click Button  ${btnSalvarNovo}    

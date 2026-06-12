# ProcessManagerPS

## Descrição

O **ProcessManagerPS** é um script desenvolvido em PowerShell para demonstrar conceitos básicos de gerenciamento de processos no sistema operacional Windows.

Através de um menu interativo, o usuário pode iniciar aplicações, consultar informações de processos em execução, listar processos ativos e encerrar processos utilizando seu ID (PID).

## Funcionalidades

* Iniciar aplicativos e criar novos processos.
* Consultar informações básicas de um processo (PCB simplificado).
* Listar os 10 primeiros processos ativos do sistema.
* Encerrar processos pelo PID.
* Interface simples baseada em menu no terminal.

## Requisitos

* Windows 10 ou superior.
* PowerShell 5.1 ou superior.

## Como Executar

1. Salve o código em um arquivo chamado `ProcessManagerPS.ps1`.
2. Abra o PowerShell.
3. Navegue até a pasta onde o arquivo foi salvo.
4. Execute o comando:

```powershell
.\ProcessManagerPS.ps1
```

## Opções do Menu

### 1 - Iniciar um Aplicativo

Permite iniciar programas instalados no Windows, como Notepad, Calculadora ou Paint.

### 2 - Extrair o PCB de um Processo

Exibe informações básicas de um processo em execução, como:

* Nome
* ID (PID)
* Tempo de CPU utilizado

### 3 - Listar Processos Ativos

Mostra os 10 primeiros processos atualmente em execução no sistema.

### 4 - Finalizar um Processo

Permite encerrar um processo informando seu PID.

### 5 - Sair

Encerra a execução do programa.

## Objetivo Acadêmico

Este projeto foi desenvolvido com fins educacionais para auxiliar na compreensão dos conceitos de:

* Processos
* Gerenciamento de processos
* PCB (Process Control Block)
* Criação e destruição de processos
* Administração de recursos do sistema operacional

## Autor

Bruno da Silva

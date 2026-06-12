$opcao = 0
while ($opcao -ne 5) {
    Clear-Host

    Write-Host " =================== LABORATORIO DE PROCESSOS E PCB ===================" -ForegroundColor Cyan
    Write-Host "1 - Iniciar um Aplicativo (Criar um Processo/PCB)"
    Write-Host "2 - Extrair o PCB (Ficha Cadastral) de um Processo"
    Write-Host "3 - Listar os 10 Primeiros Processos Ativos"
    Write-Host "4 - Finalizar um Processo (Destruir o PCB)"
    Write-Host "5 - Sair"
    Write-Host " ====================================================================="

    $opcao = Read-Host "Escolha uma opcao"

    switch ($opcao) {
        1 {
            Write-Host "--- INICIAR APLICATIVO ---" -ForegroundColor Yellow
            $app = Read-Host "Digite o nome do programa (ex: notepad, calc, mspaint)"
            try {
                Start-Process $app -ErrorAction Stop
                Write-Host "Sucesso! O programa '$app' foi carregado na memoria e virou um Processo." -ForegroundColor Green
            } catch {
                Write-Host "Erro: Nao foi possivel encontrar ou iniciar o programa '$app'." -ForegroundColor Red
            }
            Read-Host "Pressione ENTER para Retornar ao Menu"
        }
        2 {
            Write-Host "--- EXTRAIR PCB (BLOCO DE CONTROLE) ---" -ForegroundColor Yellow
            $nomeProc = Read-Host "Digite o nome do processo que deseja investigar (ex: notepad)"
            if (Get-Process -Name $nomeProc -ErrorAction SilentlyContinue) {
                Write-Host ">> Dados do PCB encontrados:" -ForegroundColor Green
                Get-Process -Name $nomeProc | Select-Object Name, ID, CPU -First 1 | Format-Table -AutoSize
            } else {
                Write-Host "Processo '$nomeProc' nao encontrado. Ele esta rodando?" -ForegroundColor Red
            }
            Read-Host "Pressione ENTER para Retornar ao Menu"
        }
        3 {
            Write-Host "--- LISTANDO OS 10 PRIMEIROS PROCESSOS ATIVOS ---" -ForegroundColor Yellow
            Get-Process | Select-Object Name, ID, CPU -First 10 | Format-Table -AutoSize
            Read-Host "Pressione ENTER para Retornar ao Menu"
        }
        4 {
            Write-Host "--- FINALIZAR PROCESSO ---" -ForegroundColor Yellow
            $idProcesso = Read-Host "Digite o ID (PID) do processo que deseja encerrar"
            if (Get-Process -Id $idProcesso -ErrorAction SilentlyContinue) {
                Stop-Process -Id $idProcesso -Force
                Write-Host "Processo $idProcesso encerrado com sucesso! O PCB foi apagado da memoria." -ForegroundColor Yellow
            } else {
                Write-Host "Erro: ID '$idProcesso' nao encontrado." -ForegroundColor Red
            }
            Start-Sleep -Seconds 3
        }
        5 {
            Write-Host "Encerrando o Laboratorio..." -ForegroundColor Cyan
            Start-Sleep -Seconds 1
        }
        Default {
            Write-Host "Opcao Invalida! Escolha de 1 a 5." -ForegroundColor DarkRed
            Start-Sleep -Seconds 3
        }
    }
}

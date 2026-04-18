# Script para publicar no GitHub
# Certifique-se de ter o Git instalado (https://git-scm.com/)

Write-Host "🚀 Iniciando processo de publicação no GitHub..." -ForegroundColor Cyan

# Inicializar Git se necessário
if (!(Test-Path .git)) {
    git init
    Write-Host "✅ Repositório Git inicializado." -ForegroundColor Green
}

# Configurar Remoto
git remote remove origin 2>$null
git remote add origin https://github.com/marcoaugusto76-prog/fonoclar.git
Write-Host "✅ Servidor remoto configurado: https://github.com/marcoaugusto76-prog/fonoclar.git" -ForegroundColor Green

# Adicionar arquivos e fazer commit
git add .
git commit -m "Initial commit - Landing Page Fonoaudiologia Premium"
Write-Host "✅ Arquivos preparados e commit realizado." -ForegroundColor Green

# Trocar nome da branch e dar push
git branch -M main
Write-Host "📤 Enviando para o GitHub (pode ser solicitado seu login)..." -ForegroundColor Yellow

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "🎉 SUCESSO! Seu site está no GitHub." -ForegroundColor Green
} else {
    Write-Host "❌ Ocorreu um erro. Verifique se você está logado no Git ou se o repositório está vazio." -ForegroundColor Red
}

pause

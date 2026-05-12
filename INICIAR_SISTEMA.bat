@echo off
title Gerenciador de Projetos - There Arquitetura e Engenharia
echo.
echo ================================================
echo  Gerenciador de Projetos - There Arquitetura
echo ================================================
echo.
where node >nul 2>nul
if %errorlevel% neq 0 (
  echo Node.js nao encontrado.
  echo Instale o Node.js em: https://nodejs.org
  pause
  exit /b
)
if not exist node_modules (
  echo Instalando dependencias. Isso pode demorar alguns minutos...
  call npm install
)
echo.
echo Abrindo o sistema...
start http://localhost:5173
call npm run dev
pause

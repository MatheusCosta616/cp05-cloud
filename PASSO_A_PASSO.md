# CP05 - Passo a passo

Arquivos de sabotagem (config.js e app.js) ficam FORA do repositório até as provas.

## 1. Base limpa
git init && git add . && git commit -m "pipeline base"
git branch -M main
git remote add origin https://github.com/SEU_USUARIO/SEU_REPO.git
git push -u origin main
(Actions: 3 jobs verdes)

## 2. Prova 1 (Gitleaks)
git checkout -b prova-gitleaks
Copie o config.js baixado para a pasta site/
git add site/config.js && git commit -m "teste: segredo falso" && git push -u origin prova-gitleaks

## 3. Prova 2 (Semgrep)
git checkout main && git checkout -b prova-semgrep
Copie o app.js baixado para site/ SUBSTITUINDO o existente
git add site/app.js && git commit -m "teste: eval vulneravel" && git push -u origin prova-semgrep

// PROVA 2: código vulnerável. Copie para site/app.js (substituindo o conteúdo)
const params = new URLSearchParams(window.location.search);
const calc = params.get("calc");
eval(calc);   // executa qualquer coisa que vier na URL

const express = require("express");
const roteador = require("./rotas");
const cors = require('cors');

const servidor = express();

servidor.use(express.json());
servidor.use(cors());

servidor.use(roteador);

const porta = 3333;

servidor.listen(porta, () => {
  console.log(`Servidor rodando na porta ${porta}`);
})
const { Router } = require("express");
const usuarioController = require("./controllers/usuarioController");

const roteador = Router();


roteador.post('/usuario', usuarioController.criarUsuario);
roteador.get('/usuario', usuarioController.listarUsuarios);

module.exports = roteador;
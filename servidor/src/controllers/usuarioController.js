const usuarios = [];

module.exports = {
  async criarUsuario(requisicao, resposta) {
    console.log(usuarios)
    const { nome, email, senha, sexo } = requisicao.body;

    usuarios.push({
      nome,
      email,
      senha,
      sexo,
    });

    return resposta.json({
      mensagem: `usuario : ${nome} cadastrado com sucesso`
    });
  },
  async listarUsuarios(requisicao, resposta) {
    console.log('Chegou aqui')
    

    return resposta.json(usuarios);
  }
};
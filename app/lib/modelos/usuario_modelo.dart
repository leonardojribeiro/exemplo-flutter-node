class UsuarioModelo {
  final String id;
  final String nome;
  final String email;
  final String sexo;

  UsuarioModelo({
    required this.id,
    required this.nome,
    required this.email,
    required this.sexo,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'sexo': sexo,
    };
  }

  factory UsuarioModelo.fromMap(Map<String, dynamic> map) {
    return UsuarioModelo(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      email: map['email'] ?? '',
      sexo: map['sexo'] ?? '',
    );
  }

  @override
  String toString() {
    return 'UsuarioModelo(id: $id, nome: $nome, email: $email, sexo: $sexo)';
  }
}

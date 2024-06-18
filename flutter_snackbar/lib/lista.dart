class Lista {
  List<String> _itens = [];

  Lista() {
    // Não inicialize a lista no construtor se não precisar de um item inicial.
    // Se você precisar de um item inicial, pode inicializá-lo diretamente aqui.
    // novo();  <-- Removido para não inicializar a lista com um item inicial
  }

  List<String> getItens() {
    return _itens;
  }

  String getElemento(int pos) {
    if (pos >= 0 && pos < _itens.length) {
      return _itens[pos];
    }
    return ''; // Retorne uma string vazia ou null se pos for inválido
  }

  void novo() {
    DateTime agora = DateTime.now();
    String tempo = '${agora.hour}:${agora.minute}:${agora.second}';
    _itens.add(tempo);
  }

  void adicionarItem(String item) {
    _itens.add(item);
  }

  void removerItem(int pos) {
    if (pos >= 0 && pos < _itens.length) {
      _itens.removeAt(pos);
    }
  }
}

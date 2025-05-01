# ✅ Dart Task Manager

Este é um projeto simples de **gerenciador de tarefas** em Dart. Ele permite adicionar, consultar, atualizar e excluir tarefas da memória, enquanto utiliza um `StreamController` para acompanhar as ações executadas no sistema.

## 🧩 Funcionalidades

- ✅ Adicionar uma nova tarefa
- 📝 Listar todas as tarefas
- 🔁 Alternar o status de conclusão de uma tarefa
- ❌ Remover uma tarefa pelo ID
- 📡 Acompanhar logs de ações em tempo real com `Stream`

## 📦 Estrutura do Projeto
lib/<br>
├── models/<br>
│   ├── task.dart           # Modelo da Tarefa<br>
│   ├── task_manager.dart   # Lógica de gerenciamento de tarefas<br>
│   └── task_stream.dart    # StreamController para log<br>
bin/<br>
└── main.dart               # Ponto de entrada da aplicação

## Exemplo de execução

<img width="621" alt="Exemplo de execução do Gerenciador de Tarefas" src="https://github.com/user-attachments/assets/41fad1f9-99fa-4553-8439-523cee7eee19" />


## Conceitos Utilizados
* StreamController.broadcast() para permitir múltiplos ouvintes de logs.
* Conversão entre Map<String, dynamic> e objetos com fromMap() e toMap().
* Imutabilidade parcial e sobrescrita de métodos como ==, hashCode e toString para facilitar comparação e depuração.

## Exemplo de Classe de Tarefa
```
Task(
  id: '1',
  title: 'Estudar Dart',
  description: 'Praticar com projetos reais',
  isCompleted: false
);
```

# language: pt

Funcionalidade: Jogo da velha

  Cenário: Jogador X vence com a linha superior
    Dado um jogo novo
    Quando eu coloco "X" na posição 1
    E eu coloco "X" na posição 2
    E eu coloco "X" na posição 3
    Então o jogador com marcador "X" deve ter vencido

  Cenário: Empate quando o tabuleiro fica cheio sem vencedor
    Dado um jogo novo
    Quando eu preencho o tabuleiro sem vencedor
    Então o tabuleiro deve estar cheio
    E nenhum jogador deve ter vencido

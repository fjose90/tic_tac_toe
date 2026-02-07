# language: pt

Funcionalidade: IA vs Humano (simulada)

  Cenário: Computador escolhe uma posição válida
    Dado um jogo com um jogador computador e um oponente substituto
    Quando o computador seleciona uma posição
    Então a posição escolhida deve estar entre as posições livres

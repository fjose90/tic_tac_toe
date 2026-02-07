# frozen_string_literal: true

Dado("um jogo novo") do
  player_class = Class.new do
    def initialize(*); end
  end

  @game = TicTacToe::Game.new(player_class, player_class)
end

Quando("eu coloco {string} na posição {int}") do |marker, position|
  @game.place_marker(position, marker)
end

Quando("eu preencho o tabuleiro sem vencedor") do
  # Fill board to produce a draw (no winning lines)
  # pattern taken to avoid any winning trio
  positions = {
    1 => "X",
    2 => "O",
    3 => "X",
    4 => "X",
    5 => "O",
    6 => "O",
    7 => "O",
    8 => "X",
    9 => "X",
  }
  positions.each { |pos, mark| @game.place_marker(pos, mark) }
end

Então("o jogador com marcador {string} deve ter vencido") do |marker|
  player = Struct.new(:marker).new(marker)
  expect(@game.player_has_won?(player)).to(be(true))
end

Então("o tabuleiro deve estar cheio") do
  expect(@game.board_full?).to(be(true))
end

Então("nenhum jogador deve ter vencido") do
  x = Struct.new(:marker).new("X")
  o = Struct.new(:marker).new("O")
  expect(@game.player_has_won?(x)).to(be(false))
  expect(@game.player_has_won?(o)).to(be(false))
end

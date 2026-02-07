# frozen_string_literal: true

require_relative "tic_tac_toe/computer_player"
require_relative "tic_tac_toe/game"
require_relative "tic_tac_toe/human_player"
require_relative "tic_tac_toe/player"

if __FILE__ == $PROGRAM_NAME
  TicTacToe::Game.new(
    TicTacToe::ComputerPlayer,
    TicTacToe::ComputerPlayer,
  ).play

  puts

  players_with_human = [
    TicTacToe::HumanPlayer,
    TicTacToe::ComputerPlayer,
  ].shuffle

  TicTacToe::Game.new(*players_with_human).play
end

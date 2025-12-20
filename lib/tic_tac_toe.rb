# frozen_string_literal: true

module TicTacToe
  WINNING_LINES = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7],
  ]

  class Game
    attr_reader :board

    def initialize(_, _)
      @board = Array.new(10)
    end

    def free_positions
      (1..9).select { |pos| @board[pos].nil? }
    end

    def
  end

  class Player
  end

  class HumanPlayer
  end

  class ComputerPlayer
  end
end

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
    attr_reader :current_player_id

    def initialize(player_1_class, player_2_class)
      @board = Array.new(10)
      @current_player_id = 0
      @players = [
        player_1_class.new(self, "X"),
        player_2_class.new(self, "O"),
      ]
    end

    def free_positions
      (1..9).select { |pos| @board[pos].nil? }
    end

    def place_marker(position, marker)
      @board[position] = marker
    end

    def switch_players!
      @current_player_id = 1 - @current_player_id
    end

    def winning_line?(line, marker)
      line.all? { |pos| @board[pos] == marker }
    end

    def player_has_won?(player)
      WINNING_LINES.any? { |line| winning_line?(line, player.marker) }
    end

    def board_full?
      free_positions.empty?
    end

    def current_player
      @players[@current_player_id]
    end

    def opponent
      @players[other_player_id]
    end

    def turn_num
      10 - free_positions.size
    end

    def print_board
      col_separator = " | "
      row_separator = "--+---+--"
      label_for_position = lambda { |position| @board[position] ? @board[position] : position }

      row_for_display = lambda { |row| row.map(&label_for_position).join(col_separator) }
      row_positions = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      rows_for_display = row_positions.map(&row_for_display)
      puts rows_for_display.join("\n" + row_separator + "\n")
    end
  end
end

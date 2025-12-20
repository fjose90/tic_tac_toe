# frozen_string_literal: true

module TicTacToe
  class Player
    def initialize(game, marker)
      @game = game
      @marker = marker
    end
    attr_reader :marker
  end
end

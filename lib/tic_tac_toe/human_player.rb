# frozen_string_literal: true

module TicTacToe
  class HumanPlayer < Player
    def select_position!
      @game.print_board
      loop do
        print("Selecione a posição para #{marker}: ")
        selection = gets.to_i
        return selection if @game.free_positions.include?(selection)

        puts "Posição #{selection} não está disponível. Tente novamente."
      end
    end

    def to_s
      "Human"
    end
  end
end

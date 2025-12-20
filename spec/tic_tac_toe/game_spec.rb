# frozen_string_literal: true

RSpec.describe(TicTacToe::Game) do
  subject(:game) { described_class.new(player_class, player_class) }

  let(:player_class) do
    Class.new do
      def initialize(*); end
    end
  end

  it "começa com tabuleiro vazio" do
    expect(game.board.compact)
      .to(be_empty)
  end

  it "returns all positions as free when board is empty" do
    expect(game.free_positions)
      .to(eq((1..9).to_a))
  end

  it "places a marker on the board" do
    game.place_marker(1, "X")

    expect(game.board[1]).to(eq("X"))
  end
end

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

  it "switches current player" do
    first_player = game.current_player_id

    game.switch_players!

    expect(game.current_player_id).not_to(eq(first_player))
  end

  describe "#player_has_won?" do
    it "returns true when a player completes a winning line" do
      game.board[1] = "X"
      game.board[2] = "X"
      game.board[3] = "X"

      player = double(marker: "X")

      expect(game.player_has_won?(player)).to(be(true))
    end
  end

  describe "#board_full?" do
    it "returns true when there are no free positions" do
      (1..9).each { |pos| game.board[pos] = "X" }

      expect(game.board_full?).to(be(true))
    end
  end

  describe "#current_player" do
    let(:player_class) do
      Class.new do
        def initialize(*); end
      end
    end

    it "returns the current player based on current_player_id" do
      game = described_class.new(player_class, player_class)

      expect(game.current_player).to(be_a(player_class))
    end
  end
end

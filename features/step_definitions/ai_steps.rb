Dado('um jogo com um jogador computador e um oponente substituto') do
  # Criamos uma classe substituta para oponente sem comportamento interativo
  dummy_opponent = Class.new do
    def initialize(*); end
    def marker; 'O'; end
    def to_s; 'Dummy'; end
  end

  @game = TicTacToe::Game.new(TicTacToe::ComputerPlayer, dummy_opponent)
end

Quando('o computador seleciona uma posição') do
  @chosen = @game.current_player.select_position!
end

Então('a posição escolhida deve estar entre as posições livres') do
  expect(@game.free_positions).to(include(@chosen))
end

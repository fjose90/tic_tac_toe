# frozen_string_literal: true

# Carrega o Bundler e garante que as gems do Gemfile sejam usadas
require "bundler/setup"

# Carrega o código da aplicação (módulos de algoritmos)
require_relative "../lib/tic_tac_toe.rb"

RSpec.configure do |config|
  # Define a sintaxe de expectativas como `expect(...)`
  config.expect_with(:rspec) do |expectations|
    expectations.syntax = :expect
  end

  # Garante que mocks e stubs só sejam feitos em métodos que realmente existem
  config.mock_with(:rspec) do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Aplica automaticamente contexts compartilhados aos grupos de testes
  config.shared_context_metadata_behavior = :apply_to_host_groups

  # Executa os testes em ordem aleatória para detectar dependências ocultas
  config.order = :random
  Kernel.srand(config.seed)

  Dir[File.join(__dir__, "support/**/*.rb")].sort.each { |f| require f }
end

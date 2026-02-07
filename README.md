# Tic Tac Toe (Ruby)

Projeto de exemplo com implementação do jogo da velha, testes unitários com RSpec e testes de aceitação com Cucumber.

Requisitos
- Ruby ~> 3.4
- Bundler

Correções comuns
--
- Se o jogo for requerido diretamente, não executará a lógica interativa thanks a um guard (`if __FILE__ == $PROGRAM_NAME`).
CI
--
Este repositório inclui um workflow GitHub Actions em `.github/workflows/ci.yml` que executa `rspec` e `cucumber` em pushes e pull requests.

Features adicionais
--
Incluí uma feature `features/ai_vs_human.feature` que verifica que `ComputerPlayer` seleciona posições válidas (usa um oponente substituto para garantir determinismo nos testes).

Contribuindo
--
- Abra um pull request com melhorias nas features ou cobertura de testes.
- Para depurar a IA, habilite `DEBUG = true` em `lib/tic_tac_toe/computer_player.rb`.

Conventional Commits / Git hooks
--
Incluí um hook opcional em `.githooks/commit-msg` que valida mensagens seguindo o padrão Conventional Commits.
Para habilitá-lo localmente, execute na raiz do repositório:

```bash
# registra o diretório .githooks como fonte de hooks do Git para este repositório
git config core.hooksPath .githooks
```

Formato aceito (exemplo):

```
feat(auth): adicionar fluxo de login
fix: corrigir erro ao validar posição
```

Se preferir não usar hooks, ignore este passo — o arquivo `.githooks/commit-msg` não é ativado automaticamente.

Correções comuns
- Se o jogo for requerido diretamente, não executará a lógica interativa thanks a um guard (`if __FILE__ == $PROGRAM_NAME`).

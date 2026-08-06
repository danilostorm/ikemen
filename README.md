# Ikemen GO – Street Fighter Alpha/Zero

Projeto baseado no **Ikemen GO v1.0.0-rc.2 para Windows**, preparado para receber e manter personagens, fases, configurações e futuras personalizações.

## Integração atual

- 45 personagens do pacote Street Fighter Alpha/Zero
- 131 fases do pacote
- 48 personagens selecionáveis ao todo, contando os 3 personagens de teste originais do Ikemen
- músicas copiadas para `sound/`
- personagens comuns, especiais e chefes organizados por ordem no modo Arcade
- correção da música ausente da fase `_Boss-Mike.def`, que agora usa `sound/Mike.mp3`
- arquivo original de seleção preservado como `data/select.original.def` na montagem pronta

## Arquivos versionados

- `data/select.def`: seleção completa de personagens e fases
- `integration_manifest.json`: relatório da integração e validação

A montagem completa para Windows contém cerca de 528 MB. Os executáveis, sprites, músicas e demais assets binários não estão armazenados neste repositório público nesta primeira etapa; o repositório começa com as configurações para continuarmos o desenvolvimento de forma organizada.

## Inicialização

Na montagem completa, execute `Ikemen_GO.exe`.

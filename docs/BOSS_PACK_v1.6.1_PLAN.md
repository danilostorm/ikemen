# MUGEN STORM v1.6.1 — Boss Pack

Branch de integração: `storm-boss-pack-v1.6.1`.

## Objetivo
Adicionar personagens de alto nível ao roster do STORM LIVE HARD sem alterar o núcleo do Infinite Watch nem a integração existente com o Battle League.

## Primeira onda
- Evil Ken SSF'2 Plus
- Ultimate Ken
- Ultimate Ryu

## Regras de integração
- `external/script/infinitewatch.lua` permanece intacto.
- O roster continua sendo alimentado pelo `data/select.def` e por `main.t_randomChars`.
- Cada variante recebe identidade própria no nome exibido, evitando fundir Ultimate Ryu/Ken com os personagens base no site.
- Storyboards de Arcade dos convidados são desativados quando não são necessários ao Watch 24/7.
- Antes da Release, validar DEF/CMD/CNS/AIR/SFF/SND e palettes referenciadas.
- O pacote final será incremental, com backup de `data/select.def`, ZIP, SHA-256 e Release própria, seguindo o padrão das v1.4.0/v1.5.0.

## Estado
Preparação iniciada. Binários serão importados de forma automatizada e temporária; workflow/payload de publicação será removido depois da Release, como nas versões anteriores.

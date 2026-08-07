# Ikemen GO – Street Fighter Alpha/Zero LIVE

Projeto baseado no **Ikemen GO v1.0.0-rc.2 para Windows**, customizado para uma live contínua de **CPU vs CPU**.

## Estado atual — v1.3.0 Storm Live

O projeto mantém o roster Street Fighter Alpha/Zero e adiciona personagens extras para aumentar a variedade das lutas.

Personagens extras atualmente integrados:

- Alex
- Dudley
- Urien
- Gill
- Ibuki
- Makoto
- Hugo
- Oro
- Q
- Necro
- Elena
- Remy
- Twelve
- Sean
- Yang
- Yun
- Juri
- C. Viper
- Poison
- Haggar

## WATCH INFINITO para live

O arquivo `external/script/infinitewatch.lua` contém o modo automático preparado para transmissão longa:

- CPU nível **8** fixo nos dois lados
- nível da CPU aplicado **depois** da seleção dos personagens
- AI auto-ramping desativado no Watch
- troca automática de lutadores ao terminar cada luta
- rotação por **shuffle bag**, reduzindo bastante repetições antes de reutilizar o elenco
- evita mirror match e repetição imediata quando possível
- evita repetir imediatamente a mesma fase
- contador de lutas e matchup registrados no console
- proteção com `pcall` para tentar recuperar a rotação de erros Lua de matchup sem encerrar toda a sessão
- `Esc` continua retornando ao menu

## Arquivos no GitHub

O GitHub mantém os scripts e configurações que controlam a montagem. Os pacotes binários completos de personagens, sprites e sons são distribuídos separadamente porque são grandes demais para um fluxo prático pelo Contents API.

## Estrutura principal

- `data/select.def` — roster e fases
- `external/script/infinitewatch.lua` — automação da live CPU vs CPU
- `save/config.json` — configurações do Ikemen

## Observação sobre IA

O Ikemen entrega AI Level 8 aos dois lados no Watch, mas personagens antigos de MUGEN podem possuir lógica interna de IA diferente. Por isso alguns lutadores ainda podem ser naturalmente mais fortes ou mais inteligentes do que outros mesmo recebendo o mesmo nível do engine.

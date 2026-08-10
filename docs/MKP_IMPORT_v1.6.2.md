# STORM v1.6.2 — MKP Mega Import

Branch de teste para ampliar o roster sem alterar o Infinite Watch ou o STORM_Bridge.

## Bosses adicionais
- Evil Ryu (SF2): identidade própria, order 4.
- Shin Akuma (feli_akuma): modo Shin fixado para não exigir seleção humana, order 4.

## MKP
Origem: `MKP 4.1 S2.9 Ultimate Update 2020 (Edited)`.

O SELECT fonte possui 356 entradas ativas de personagens. O importador de teste lê o próprio `data/MKP/SELECT.def` da origem, valida o DEF e as referências `[Files]`, e só ativa personagens completos.

Assets permitidos para importação sem sobrescrever STORM existente:
- chars usados pelo SELECT;
- stages extraídos;
- `data/MKP` compartilhado pelos personagens;
- sound e music;
- Resources/font/New sounds quando presentes.

Não importar/substituir: executáveis, DLLs, MugenHook, SweetFX, plugins, configs do engine, screenpack ou lifebar global do MKP.

O pacote de teste inclui backup/rollback por manifesto e verifica que `external/script/infinitewatch.lua` e os arquivos estáveis do `STORM_Bridge` permanecem inalterados.

A publicação definitiva só deve ocorrer após o teste real em `STORM LIVE HARD` + site.
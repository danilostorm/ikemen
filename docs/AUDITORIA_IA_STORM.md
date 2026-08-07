# Auditoria de IA - MUGEN STORM v1.5.0

## Objetivo
Melhorar lutas CPU vs CPU sem substituir IAs boas dos autores nem criar leitura perfeita artificial.

## Conclusões
- O motor trabalha com AILevel 1 a 8; STORM LIVE HARD mantém 8 fixo.
- A maior parte do roster Alpha/Zero já possui IA própria e leitura do adversário.
- Dan foi o principal outlier Alpha/Zero: camada automática muito mais limitada, baseada principalmente no antigo var(59).
- C. Viper não apresentava camada dedicada baseada em AILevel/CPU no CMD auditado.
- Sean tinha golpes completos, mas não uma camada de decisão de CPU comparável aos chars mais fortes.
- Makoto parecia fraca olhando apenas o CMD, porém sua IA está em m-2.cns: distância, HitDefAttr, defesa, corrida, confirms e cancels. Foi preservada.
- Hyper DBZ já possui rotinas avançadas de defesa, anti-air, distância, power e chance escalada por AILevel. Foi preservado.

## Reforços
### Dan
Defesa, Koryuken anti-air, Gadoken em distância, Dankukyaku de aproximação/cancel, normais por alcance e supers em punish.

### C. Viper
Defesa, Thunder Knuckle anti-air/pressão, Seismic Hammer por distância, Burning Kick em confirm e Emergency Combination em punish.

### Sean
Defesa, Dragon Smash anti-air, Tackle/Tornado por alcance e supers respeitando var(58) e o custo de power.

## Live 24/7
- Shuffle-bag de personagens.
- Shuffle-bag de fases.
- Evita repetição imediata quando possível.
- Blacklist temporária de matchups com erro Lua recuperável.
- IA 8 aplicada depois da seleção.
- ESC encerra o modo automático.

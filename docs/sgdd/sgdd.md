# 📜 SGDD — Simplified Game Design Document: Ormund Tale

**Título:** Ormund Tale  
**Gênero:** Metroidvania 2D / Ação em Plataforma com Elementos Soulslike  
**Engine:** Godot 4.x (2D)  
**Referências:** Hollow Knight, Castlevania, Celeste, Dark Souls  
**Status:** Prototipagem — física e sistemas de componentes em validação

---

## 1. Identidade do Jogo

> **"Uma jornada cooperativa entre dois heróis improváveis, alternando magia ancestral e astúcia ladina para purificar um reino corrompido."**

**Ormund Tale** é um metroidvania focado na dinâmica de **dupla de protagonistas alternáveis em tempo real (Tag-Team)**. O jogador controla **Delphy** e **Bazz**, trocando entre eles com um toque de botão para superar obstáculos, desvendar caminhos e enfrentar batalhas táticas contra aberrações e chefes trágicos.

---

## 2. Pilares de Design

1. **Exploração interconectada:** Mapa rico em segredos, rotas alternativas e progressão orientada a habilidades.
2. **Combate com peso:** Ataques impactantes, esquiva/parry e gerenciamento de recursos — influência Soulslike.
3. **Alternância dinâmica (Dual-Hero):** Delphy e Bazz compartilham a mesma base de física, mas têm ferramentas completamente distintas.
4. **Upgrades e colecionáveis:** Bestiário com cartas de monstros e evolução personalizada por personagem.
5. **Chefes trágicos:** Inimigos corrompidos com história — podem ser purificados em vez de apenas derrotados.
6. **Identidade visual e sonora:** Pixel art 2D com parallax e trilha sonora atmosférica.
7. **Acessibilidade:** Modos para daltonismo, ajustes de interface e remapeamento de controles.

---

## 3. Os Protagonistas (Sistema Tag-Team)

Ambos compartilham o mesmo **kit base de física** (velocidade de corrida, pulo, coyote time, jump buffer) para que a troca seja fluida. Mas seus poderes são completamente diferentes:

```
                  ┌──────────────────────────────────────────────┐
                  │          ORMUND TALE: CORE PLAYER            │
                  │   (CharacterBody2D + FSM de Movimentação)    │
                  └──────────────────────┬───────────────────────┘
                                         │
                    ┌─────────────────────┴─────────────────────┐
                    ▼                                           ▼
          ┌───────────────────┐                       ┌───────────────────┐
          │      DELPHY       │   [ Alternância ]     │       BAZZ        │
          │   (Sereia Maga)   │◄─────────────────────►│ (Tiefling Ladino) │
          └─────────┬─────────┘    [ Botão de Swap ]  └─────────┬─────────┘
                    │                                           │
   - Magias aquáticas & tempestades            - Ágil, adagas & bestas
   - Canto hipnotizante (Crowd Control)        - Grappling Hook (gancho)
   - Evolução nas Fontes de Hamus              - Pilhagem & forja de armas
```

### 3.1. Delphy (A Sereia Conjuradora)
- **Ligação:** Deus-Peixe **Hamus**.
- **Estilo:** Conjuradora à distância e controle de grupo.
- **Habilidades:**
  - *Canto Hipnotizante:* Paralisa ou atordoa inimigos, abrindo janelas de ataque.
  - *Magias da Tempestade:* Rajadas de água e raios — dano em área e ativação de mecanismos elétricos/hídricos.
- **Progressão:** Meditação e oferendas nas **Fontes do Deus-Peixe Hamus** espalhadas pelo mundo.

### 3.2. Bazz (O Tiefling Ladino)
- **Origem:** Especialista em infiltração, ferramentas e sobrevivência urbana.
- **Estilo:** Combate ágil corpo a corpo, ataques furtivos e mobilidade vertical.
- **Habilidades:**
  - *Adagas e Bestas:* Ataques rápidos de curto alcance e disparos precisos.
  - *Grappling Hook:* Grampeia anéis, galhos e superfícies para alcançar novas alturas e cruzar abismos.
- **Progressão:** Derrota inimigos e rouba/adapta suas armas, aprimorando o arsenal.

---

## 4. O Mundo e a Corrupção de Örmund

### 4.1. Tipos de Inimigos
1. **Inimigos-Natos:** Bestas e criaturas naturalmente hostis.
2. **Inimigos Corrompidos:** Moradores e guardas dominados pela magia do Mago Maligno.
3. **Chefes (Líderes Corrompidos):** Antigos campeões do reino — como um Ferreiro lendário, uma Madre virtuosa ou um Bardo renomado — distorcidos em monstros trágicos.

### 4.2. Purificação
- Cada chefe tem padrões de ataque que remetem ao seu ofício original.
- Com **Itens ou Rituais de Purificação**, é possível libertar a alma do chefe em vez de matá-lo — revelando diálogos, recompensas e aliados para a reconstrução do mundo.

---

## 5. Sistemas de Gameplay

| Sistema | Descrição |
| :--- | :--- |
| **Tag-Team Swap** | Troca instantânea de personagem, preservando posição e inércia. |
| **Stamina & Defesa** | Esquiva com i-frames e Parry com janela de contra-ataque. |
| **Bestiário de Cartas** | Inimigos dropam cartas colecionáveis com lore, stats e bônus passivos. |
| **Equipamentos** | 3 slots por herói: *Arma*, *Armadura* e *Acessório/Relíquia*. |
| **Travessia & Locks** | Grappling Hook, Dash, Salto Duplo e Correntes Mágicas abrem novas áreas. |
| **Checkpoints & Morte** | Altares sagrados de descanso; penalidade soulslike de recuperação no local da morte. |

---

## 6. Referências Visuais
As referências de pixel art, iluminação e cenário estão em `assets/art_references/` (`ref_1.png` a `ref_17.png`).

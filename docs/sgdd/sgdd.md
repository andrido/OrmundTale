# 📜 SGDD — Simplified Game Design Document: Ormund Tale

**Título do Jogo:** Ormund Tale  
**Gênero:** Metroidvania 2D / Ação em Plataforma com Elementos Soulslike  
**Engine:** Godot 4.x (2D)  
**Público-Alvo:** Jogadores fãs de Hollow Knight, Castlevania, Celeste e Dark Souls  
**Status Atual:** Fase de Prototipagem & Validação de Física/Componentes  

---

## 1. Identidade e Mantra do Jogo

> **"Uma jornada cooperativa entre dois heróis improváveis, alternando magia ancestral e astúcia ladina para purificar um reino corrompido."**

**Ormund Tale** é um jogo de plataforma e metroidvania focado na dinâmica de **dupla de protagonistas alternáveis em tempo real (Tag-Team)**. O jogador controla **Delphy** e **Bazz**, alternando entre eles com um toque de botão para superar obstáculos de travessia, desvendar caminhos bloqueados e enfrentar batalhas táticas contra aberrações e chefes trágicos.

---

## 2. Pilares de Design

1. **Exploração Agradável & Interconectada:** Mapa rico em segredos, rotas alternativas e progressão orientada a habilidades (Metroidvania clássico).
2. **Combate Satisfatório & Metódico:** Ataques com peso, janelas de esquiva/parry e gerenciamento de recursos (influência Soulslike).
3. **Alternância Dinâmica (Dual-Hero Synergy):** Delphy e Bazz compartilham a mesma responsividade de base, mas oferecem soluções de combate e travessia completamente distintas.
4. **Upgrades & Colecionáveis Gratificantes:** Saques, bestiário com cartas de monstros e evolução personalizada para cada herói.
5. **História Cativante & Chefes Trágicos:** Inimigos corrompidos que possuem passado e que podem ser purificados através de rituais ou itens específicos.
6. **Identidade Sonora & Visual Marcante:** Trilha sonora atmosférica e pixel art 2D expressivo com parallax.
7. **Acessibilidade Inclusiva:** Modos para daltonismo, ajustes de interface e remapeamento integral de controles.

---

## 3. Dinâmica dos Protagonistas (Sistema Tag-Team)

Ambos os personagens compartilham o mesmo **kit básico de física** (velocidade base de corrida, física de pulo, coyote time e jump buffer) para manter a fluidez de controle idêntica na troca. No entanto, seus poderes e ferramentas de travessia são únicos:

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
- **Origem:** Ligada ao sagrado Deus-Peixe **Hamus**.
- **Estilo de Jogo:** Conjuradora à distância e controle de grupo.
- **Habilidades Especiais:**
  - *Canto Hipnotizante:* Paralisa ou atordoa inimigos temporariamente, abrindo janelas de ataque.
  - *Magias da Tempestade:* Rajadas de água e raios para dano em área e ativação de mecanismos elétricos/hídricos.
- **Progressão / Upgrades:** Meditação e oferendas nas **Fontes do Deus-Peixe Hamus** espalhadas pelo mundo.

### 3.2. Bazz (O Tiefling Ladino)
- **Origem:** Especialista em infiltração, ferramentas e sobrevivência urbana.
- **Estilo de Jogo:** Combate ágil corpo a corpo, ataques furtivos e utilidade vertical.
- **Habilidades Especiais:**
  - *Adagas e Bestas:* Ataques rápidos de curto alcance e disparos precisos.
  - *Grappling Hook (Gancho):* Fixação em anéis, galhos e superfícies especiais para alcançar novas alturas e cruzar abismos.
- **Progressão / Upgrades:** Derrota inimigos e rouba/adapta suas armas e lâminas, aprimorando seu arsenal.

---

## 4. O Mundo e a Corrupção de Örmund

### 4.1. Tipos de Inimigos
1. **Inimigos-Natos:** Bestas selvagens, predadores e criaturas que sempre foram hostis por natureza biológica.
2. **Inimigos Corrompidos Menores:** Moradores e guardas dominados pela magia nefasta do Mago Maligno.
3. **Bosses (Líderes Corrompidos):** Antigos campeões do reino (como um lendário Ferreiro, uma virtuosa Madre ou um renomado Bardo) distorcidos em monstros trágicos.

### 4.2. A Mecânica de Purificação
- Cada chefe possui padrões de ataque inspirados em seu ofício antes da corrupção.
- O jogador poderá descobrir ou utilizar **Itens/Rituais de Purificação**, permitindo libertar a alma desses chefes em vez de apenas destruí-los, revelando diálogos secretos, recompensas e auxílio na reconstrução do mundo.

---

## 5. Sistemas de Gameplay (Features Core)

| Sistema | Descrição Técnica |
| :--- | :--- |
| **Tag-Team Swap** | Troca instantânea de personagem com animação ágil e persistência de posição/inércia. |
| **Stamina & Defesa** | Esquiva com frames de invulnerabilidade (i-frames) e mecânica de Parry com janela de contra-ataque. |
| **Bestiário de Cartas** | Álbum in-game onde inimigos dropam cartas colecionáveis com lore, estatísticas e bônus passivos. |
| **Equipamentos** | 3 slots principais por herói: *Arma*, *Armadura* e *Acessório/Relíquia*. |
| **Travessia & Locks** | Grappling Hook, Dash, Salto Duplo e Correntes Mágicas servindo de chaves para novas áreas. |
| **Checkpoints & Morte** | Altares sagrados de descanso; penalidade soulslike de recuperação de essência no local da morte. |

---

## 6. Referências Visuais e Artísticas
As referências de pixel art, iluminação atmosférica e design de cenários estão documentadas em `assets/art_references/` (`ref_1.png` a `ref_17.png`).

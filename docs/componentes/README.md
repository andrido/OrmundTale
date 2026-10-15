# 🧩 Entidades com Componentes — Ormund Tale

Arquitetura de **Composição sobre Herança (Entity-Component Pattern)** aplicada na Godot 4.

> **Princípio:** Em vez de hierarquias de herança rígidas (ex: `Inimigo -> InimigoQuePula -> InimigoQuePulaEAtira`), cada entidade é um nó raiz simples (`CharacterBody2D` ou `Area2D`) composto por **nós componentes independentes**. Cada componente tem uma responsabilidade única e se comunica via sinais.

---

## 1. Matriz de Entidades × Componentes

| Entidade | MovementComponent | HealthComponent | HitboxComponent | HurtboxComponent | StaminaComponent | TagTeamComponent | SpellCasterComponent | GrappleComponent | AIBehaviorComponent | LootDropComponent | PurificationComponent |
| :--- | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **Delphy (Player)** | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ❌ Não | ❌ Não | ❌ Não | ❌ Não |
| **Bazz (Player)** | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ❌ Não | ✅ Sim | ❌ Não | ❌ Não | ❌ Não |
| **Rastreador (Inimigo Nato)** | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ✅ Sim (Perseguição) | ✅ Sim (Materiais) | ❌ Não |
| **Morcego (Inimigo Nato)** | ✅ Sim (Voo) | ✅ Sim | ✅ Sim | ✅ Sim | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ✅ Sim (Mergulho) | ✅ Sim (Asas/Dentes) | ❌ Não |
| **Guarda Corrompido** | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim | ✅ Sim (Postura) | ❌ Não | ❌ Não | ❌ Não | ✅ Sim (Patrulha/Bloqueio) | ✅ Sim (Cartas/Espadas) | ❌ Não |
| **Sectário Corrompido** | ✅ Sim (Lento) | ✅ Sim | ✅ Sim | ✅ Sim | ❌ Não | ❌ Não | ✅ Sim (Projétil Escuro) | ❌ Não | ✅ Sim (Kiting/Fuga) | ✅ Sim (Cartas/Tomos) | ❌ Não |
| **Ferreiro Corrompido (Boss)** | ✅ Sim (Pesado) | ✅ Sim (Boss) | ✅ Sim | ✅ Sim | ✅ Sim (Postura) | ❌ Não | ❌ Não | ❌ Não | ✅ Sim (Fases de Boss) | ✅ Sim (Martelo Raro) | ✅ Sim (Altar/Ritual) |
| **Madre Virtuosa (Boss)** | ✅ Sim (Flutua) | ✅ Sim (Boss) | ✅ Sim | ✅ Sim | ✅ Sim (Postura) | ❌ Não | ✅ Sim (Espinhos/Luz) | ❌ Não | ✅ Sim (Fases de Boss) | ✅ Sim (Relíquia Sagrada) | ✅ Sim (Altar/Ritual) |
| **Fonte do Deus Hamus** | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ❌ Não | ❌ Não | *(usa `InteractionComponent` e `CheckpointComponent`)* |

---

## 2. Descrição dos Componentes

### 2.1. Físicos e de Movimento
- **`MovementComponent`:** Controla aceleração, fricção, velocidade máxima, gravidade, coyote time e buffer de pulo. Reutilizado por protagonistas e inimigos terrestres.

### 2.2. Vida e Dano
- **`HealthComponent`:** Gerencia HP atual e máximo. Emite sinais `health_changed(current, max)` e `died`. Não precisa saber quem causou o dano — apenas calcula e dispara eventos.
- **`HurtboxComponent` (`Area2D`):** Recebe ataques. Ao detectar um `HitboxComponent`, repassa o dano ao `HealthComponent`.
- **`HitboxComponent` (`Area2D`):** Causa dano ativo (adagas, magias, corpo de monstros). Carrega valor de dano, tipo (físico/mágico) e knockback.

### 2.3. Combate e Habilidades
- **`StaminaComponent`:** Barra de estamina para esquivas, bloqueios e parries.
- **`TagTeamComponent`:** Exclusivo dos protagonistas. Gerencia a troca instantânea entre Delphy e Bazz, mantendo inércia, posição e estado.
- **`SpellCasterComponent`:** Instancia feitiços (projéteis elementais, áreas de efeito, canto hipnotizante). Usado por Delphy e adaptado para chefes conjuradores.
- **`GrappleComponent`:** Dispara o gancho retrátil, calcula trajetória até pontos de ancoragem e puxa Bazz.

### 2.4. IA e Progressão
- **`AIBehaviorComponent`:** Máquina de estados que controla as decisões de inimigos e chefes (Patrulhar, Perseguir, Atacar, Recuar).
- **`LootDropComponent`:** Instancia itens, moedas, cartas e armas quando recebe o sinal `died`.
- **`PurificationComponent`:** Monitora janelas de oportunidade em chefes corrompidos (atordoados, postura quebrada) e permite executar a purificação mística.

---

## 3. Diagrama de Composição (Árvore de Nós)

```mermaid
classDiagram
    direction TB
    
    class PlayerEntity["Player (CharacterBody2D)"] {
        +position: Vector2
        +velocity: Vector2
    }
    
    class MovementComponent["MovementComponent (Node)"] {
        +speed: float
        +jump_velocity: float
        +apply_movement()
    }
    
    class HealthComponent["HealthComponent (Node)"] {
        +current_hp: int
        +max_hp: int
        +take_damage(amount)
    }
    
    class StaminaComponent["StaminaComponent (Node)"] {
        +current_stamina: float
        +consume(amount)
    }
    
    class TagTeamComponent["TagTeamComponent (Node)"] {
        +active_character: Enum
        +swap_character()
    }
    
    class HurtboxComponent["HurtboxComponent (Area2D)"] {
        +collision_layer: Hurtbox
    }
    
    PlayerEntity *-- MovementComponent : Composição
    PlayerEntity *-- HealthComponent : Composição
    PlayerEntity *-- StaminaComponent : Composição
    PlayerEntity *-- TagTeamComponent : Composição
    PlayerEntity *-- HurtboxComponent : Composição
```

# 👾 Entidades do Jogo — Ormund Tale

Catálogo de todas as entidades do mundo de **Ormund Tale**.

---

## 1. Protagonistas (Dupla Tag-Team)

### 1.1. Delphy (A Sereia Maga)
- **Tipo:** Entidade Jogável (`CharacterBody2D`)
- **Papel:** Conjuradora à distância e suporte tático.
- **Características:**
  - Locomoção padrão compartilhada com Bazz (corrida, salto, gravidade).
  - Magias elementais de tempestade e água.
  - Canto hipnotizante para atordoar grupos de inimigos.
  - Interage com mecanismos hídricos e elétricos do cenário.
  - Evolui através de oferendas nas Fontes do Deus-Peixe Hamus.

### 1.2. Bazz (O Tiefling Ladino)
- **Tipo:** Entidade Jogável (`CharacterBody2D`)
- **Papel:** Combatente ágil corpo a corpo e mobilidade vertical.
- **Características:**
  - Locomoção padrão compartilhada com Delphy.
  - Combate veloz com adagas e disparos de besta.
  - Grappling Hook para se prender a anéis, galhos e saliências.
  - Pilha armas de inimigos derrotados para forjar lâminas novas.

---

## 2. Inimigos Natos (Fauna Hostil Natural)

### 2.1. Rastreador das Cavernas (Cave Crawler)
- **Tipo:** Inimigo Selvagem (`CharacterBody2D`)
- **Papel:** Ameaça básica de piso e tetos.
- **Comportamento:** Criatura réptil que rasteja por superfícies, investe ao avistar o jogador e ataca com mordidas rápidas.

### 2.2. Morcego das Sombras (Shadow Bat)
- **Tipo:** Inimigo Voador (`CharacterBody2D`)
- **Papel:** Pressão aérea e controle vertical.
- **Comportamento:** Dorme no teto até o jogador se aproximar; mergulha em arco e recua.

---

## 3. Inimigos Corrompidos Menores

### 3.1. Guarda Corrompido da Cidadela
- **Tipo:** Inimigo Humanoide (`CharacterBody2D`)
- **Papel:** Soldado de linha de frente.
- **Comportamento:** Patrulha com espada e escudo. Bloqueia ataques frontais simples e tem janela de vulnerabilidade após atacar — ideal para Parry.

### 3.2. Sectário do Mago Maligno
- **Tipo:** Inimigo Conjurador (`CharacterBody2D`)
- **Papel:** Atirador à distância.
- **Comportamento:** Mantém distância teleportando-se para plataformas próximas e conjura orbes lentos de energia corrompida.

---

## 4. Chefes Trágicos (Líderes Corrompidos)

### 4.1. O Ferreiro Ancestral (The Corrupted Blacksmith)
- **Tipo:** Chefe de Área (`CharacterBody2D`)
- **Tema:** Fogo, forja e impacto pesado.
- **Ataques:** Golpes com martelo colossal gerando ondas de choque; invoca brasas incandescentes.
- **Purificação:** Usar o Ritual de Purificação quando a postura do Ferreiro quebra — ele acorda e vira ferreiro aliado na vila.

### 4.2. A Madre Virtuosa (The Virtuous Mother)
- **Tipo:** Chefe de Área (`CharacterBody2D`)
- **Tema:** Luz distorcida, espinhos e orações corrompidas.
- **Ataques:** Barreiras de espinhos celestiais e rajadas de luz teleguiadas.
- **Purificação:** Com óleo sagrado, abençoa Delphy e amplia suas magias restaurativas.

---

## 5. Entidades Interativas de Cenário

### 5.1. Fonte do Deus-Peixe Hamus
- **Tipo:** Objeto Interativo (`Area2D`)
- **Função:** Checkpoint, cura total e menu de evolução de Delphy.

### 5.2. Ponto de Ancoragem (Grapple Point)
- **Tipo:** Mecanismo de Travessia (`Area2D` ou `StaticBody2D`)
- **Função:** Argola ou galho que reage ao Grappling Hook de Bazz — puxa o personagem ou serve de pivô para pêndulo.

### 5.3. Portão Rúnico Selado
- **Tipo:** Obstáculo de Progressão (`StaticBody2D`)
- **Função:** Barreira mágica que abre com magia elétrica de Delphy ou alavanca oculta acessível apenas por Bazz.

---

## 6. Projéteis e Efeitos

### 6.1. Orbe de Tempestade
- **Tipo:** Projétil Conjurado (`Area2D`)
- **Função:** Disparado por Delphy; viaja em linha reta causando dano elemental e ativando condutores elétricos do cenário.

### 6.2. Gancho de Disparo (Grappling Projectile)
- **Tipo:** Projétil de Utilidade (`Area2D`)
- **Função:** Cabo disparado por Bazz para travessia dinâmica.

# 👾 Entidades do Jogo — Ormund Tale

Este documento lista e descreve todas as entidades do mundo de **Ormund Tale**, revisadas conforme a visão conceitual e arquitetural do projeto.

---

## 1. Protagonistas (Dupla Tag-Team)

### 1.1. Delphy (A Sereia Maga)
- **Tipo:** Entidade Jogável (`CharacterBody2D`).
- **Papel:** Conjuradora à distância e suporte tático.
- **Comportamento & Características:**
  - Compartilha o kit de locomoção padrão (corrida, salto, gravidade).
  - Capacidade de canalizar magias elementais (tempestade e água).
  - Habilidade de emitir um canto hipnotizante para atordoar grupos de inimigos.
  - Interage com mecanismos hídricos e elétricos do mundo.
  - Desenvolve atributos através de oferendas nas Fontes do Deus-Peixe Hamus.

### 1.2. Bazz (O Tiefling Ladino)
- **Tipo:** Entidade Jogável (`CharacterBody2D`).
- **Papel:** Combatente ágil corpo a corpo e infiltração vertical.
- **Comportamento & Características:**
  - Compartilha o kit de locomoção padrão.
  - Combate veloz com adagas de curto alcance e disparos de besta.
  - Empunha um Grappling Hook (gancho de escalada) para se prender a anéis, galhos e saliências de teto.
  - Capacidade de pilhar armas de inimigos derrotados para forjar e aprimorar lâminas.

---

## 2. Inimigos Natos (Fauna Hostil Natural)

### 2.1. Rastreador das Cavernas (Cave Crawler)
- **Tipo:** Inimigo Selvagem (`CharacterBody2D`).
- **Papel:** Ameaça básica de piso e tetos.
- **Comportamento:** Criatura réptil que rasteja por superfícies, investe ao avistar o jogador e possui ataques de mordida rápida.

### 2.2. Morcego das Sombras (Shadow Bat)
- **Tipo:** Inimigo Voador (`CharacterBody2D`).
- **Papel:** Controle aéreo e pressão vertical.
- **Comportamento:** Permanece dormente no teto até o jogador se aproximar; realiza mergulhos rápidos em arco e recua.

---

## 3. Inimigos Corrompidos Menores (Habitantes Dominados)

### 3.1. Guarda Corrompido da Cidadela
- **Tipo:** Inimigo Humanoide (`CharacterBody2D`).
- **Papel:** Soldado de linha de frente.
- **Comportamento:** Patrulha rotas fixas com espada e escudo. Bloqueia ataques frontais simples e possui janela de vulnerabilidade após atacar, ideal para Parry e contra-ataque.

### 3.2. Sectário do Mago Maligno
- **Tipo:** Inimigo Conjurador (`CharacterBody2D`).
- **Papel:** Atirador à distância.
- **Comportamento:** Mantém distância do jogador teleportando-se para plataformas adjacentes e conjura orbes lentos de energia corrompida.

---

## 4. Chefes Trágicos (Líderes Corrompidos)

### 4.1. O Ferreiro Ancestral (The Corrupted Blacksmith)
- **Tipo:** Chefe de Área (`CharacterBody2D`).
- **Tema:** Fogo, forja e impacto pesado.
- **Ataques:** Golpes devastadores com martelo colossal no chão gerando ondas de choque; invoca brasas incandescentes.
- **Mecânica de Purificação:** O jogador pode utilizar o Ritual de Purificação no momento em que a postura do Ferreiro é quebrada, resgatando sua consciência e transformando-o em um ferreiro aliado na vila central.

### 4.2. A Madre Virtuosa (The Virtuous Mother)
- **Tipo:** Chefe de Área (`CharacterBody2D`).
- **Tema:** Luz distorcida, espinhos e orações corrompidas.
- **Ataques:** Cria barreiras de espinhos celestiais e dispara rajadas de luz teleguiadas.
- **Mecânica de Purificação:** Ao ser purificada com o óleo sagrado, ela abençoa Delphy, concedendo uma expansão para suas magias restaurativas.

---

## 5. Entidades Interativas de Cenário

### 5.1. Fonte do Deus-Peixe Hamus
- **Tipo:** Objeto Interativo de Mundo (`Area2D`).
- **Função:** Altar sagrado que atua como ponto de descanso/checkpoint, cura total e menu de evolução mística de Delphy.

### 5.2. Ponto de Ancoragem (Grapple Point)
- **Tipo:** Mecanismo de Travessia (`Area2D` ou `StaticBody2D`).
- **Função:** Argola metálica ou galho resistente que reage ao Grappling Hook disparado por Bazz, puxando o personagem ou servindo de pivô para pêndulo.

### 5.3. Portão Rúnico Selado
- **Tipo:** Obstáculo de Progressão (`StaticBody2D`).
- **Função:** Barreira mágica que só se abre ao ser atingida por magia elétrica de Delphy ou ativada por alavanca oculta alcançável apenas por Bazz.

---

## 6. Projéteis e Efeitos Voláteis

### 6.1. Orbe de Tempestade
- **Tipo:** Projétil Conjurado (`Area2D`).
- **Função:** Disparado por Delphy; viaja em linha reta causando dano elemental e ativando condutores elétricos.

### 6.2. Gancho de Disparo (Grappling Projectile)
- **Tipo:** Projétil de Utilitário (`Area2D`).
- **Função:** Cabo de corrente disparado por Bazz para travessia dinâmica.

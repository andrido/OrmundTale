# ⚔️ Ormund Tale

> **"Uma jornada cooperativa entre dois heróis improváveis, alternando magia ancestral e astúcia ladina para purificar um reino corrompido."**

**Gênero:** Metroidvania 2D / Plataforma de Ação com Elementos Soulslike  
**Engine:** Godot 4.x (GDScript 2.0 com tipagem estática)  
**Status:** Prototipagem — física e arquitetura de componentes em validação

---

## 👤 Sobre o Projeto

Projeto solo desenvolvido por **Matheus Maia**. O fluxo de trabalho é experimental e conta com agentes de IA (Gemini e Claude) como assistentes no desenvolvimento — desde documentação até código GDScript.

---

## 🧭 Estrutura do Repositório

```
📁 ormund-tale/
├── 📄 README.md              # Este arquivo
├── 📁 docs/                   # Documentação do jogo
│   ├── 📁 sgdd/              # SGDD (Simplified Game Design Document)
│   ├── 📁 entidades/         # Catálogo de entidades do jogo
│   └── 📁 componentes/       # Arquitetura de componentes (Entity-Component Pattern)
├── 📁 src/                    # Código-fonte (cenas e scripts)
│   ├── 📁 scenes/            # Cenas da Godot (.tscn)
│   └── 📁 scripts/           # Scripts GDScript (.gd)
└── 📁 assets/                 # Arte, sons e referências visuais
    └── 📁 art_references/    # Painel de referências de arte
```

### 🔗 Documentação

1. **[SGDD — Game Design Document](docs/sgdd/sgdd.md):** Visão geral do jogo, pilares de design, narrativa, sistemas e metas.
2. **[Entidades](docs/entidades/entidades.md):** Catálogo completo com Delphy, Bazz, inimigos, chefes e objetos do mundo.
3. **[Componentes](docs/componentes/componentes.md):** Arquitetura de composição de nós na Godot 4 (Entity-Component Pattern).

---

## 🎮 Como Executar

1. Baixe e instale a **[Godot Engine 4.x](https://godotengine.org/)**.
2. Abra a Godot, clique em **Importar** e selecione a pasta deste repositório.
3. Pressione **F5** para rodar.

### 🕹️ Controles (Sandbox atual)
- **Mover:** `A` / `D` ou setas
- **Pulo (com coyote time e altura variável):** `Espaço`, `W` ou seta cima

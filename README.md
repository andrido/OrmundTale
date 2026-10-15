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
├── 📄 README.md              # Este arquivo (visão geral do repositório)
├── 📁 docs/                   # Documentação detalhada do jogo
│   ├── 📁 gdd/               # Game Design Documents (Master e SGDD)
│   │   ├── 📄 GDD.pdf        # GDD visual completo em alta resolução
│   │   ├── 📄 GDD.md         # GDD completo editável em Markdown
│   │   └── 📄 sgdd.md        # SGDD simplificado / modelo de entrega
│   ├── 📁 entidades/         # Catálogo de entidades
│   │   └── 📄 entidades.md   # Delphy, Bazz, chefes, inimigos e itens
│   └── 📁 componentes/       # Arquitetura de componentes Godot 4
│       └── 📄 componentes.md # Entity-Component Pattern e nós
├── 📁 src/                    # Código-fonte (cenas e scripts)
│   ├── 📁 scenes/            # Cenas da Godot (.tscn)
│   └── 📁 scripts/           # Scripts GDScript (.gd)
└── 📁 assets/                 # Arte, sons e referências visuais
    └── 📁 art_references/    # Painel de referências de arte
```

### 🔗 Documentação

1. **[GDD Visual Completo (PDF)](docs/gdd/GDD.pdf):** Documento mestre original com painel de arte conceitual em alta definição.
2. **[GDD Editável (Markdown)](docs/gdd/GDD.md):** Versão completa em texto com mantra, pilares, mecânicas e história para edição contínua.
3. **[SGDD — Simplified Game Design Document](docs/gdd/sgdd.md):** Versão resumida e modular orientada aos critérios de entrega acadêmica.
4. **[Entidades](docs/entidades/entidades.md):** Fichas técnicas de Delphy, Bazz, inimigos, mecânica de purificação de chefes e itens.
5. **[Componentes](docs/componentes/componentes.md):** Arquitetura técnica de composição de nós na Godot 4 (Entity-Component Pattern).

---

## 🎮 Como Executar

1. Baixe e instale a **[Godot Engine 4.x](https://godotengine.org/)**.
2. Abra a Godot, clique em **Importar** e selecione a pasta deste repositório.
3. Pressione **F5** para rodar.

### 🕹️ Controles (Sandbox atual)
- **Mover:** `A` / `D` ou setas
- **Pulo (com coyote time e altura variável):** `Espaço`, `W` ou seta cima

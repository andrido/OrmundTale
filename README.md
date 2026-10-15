# ⚔️ Ormund Tale

> **"Uma jornada cooperativa entre dois heróis improváveis, alternando magia ancestral e astúcia ladina para purificar um reino corrompido."**

**Gênero:** Metroidvania 2D / Plataforma de Ação com Elementos Soulslike  
**Engine:** Godot 4.x (GL Compatibility / GDScript 2.0 Estritamente Tipado)  
**Status:** Protótipo / Arquitetura Modular Baseada em Componentes  

---

## 👥 Integrantes da Equipe

| Nome | Função Principal | Contato / GitHub |
| :--- | :--- | :--- |
| **[Nome do Integrante 1]** | Game Designer / Direção Criativa | [@usuario1](https://github.com/) |
| **[Nome do Integrante 2]** | Desenvolvedor Lead | [@usuario2](https://github.com/) |
| **[Nome do Integrante 3]** | Artista Técnico / Level Designer | [@usuario3](https://github.com/) |
| **[Nome do Integrante 4]** | Sound Designer / QA | [@usuario4](https://github.com/) |

*(Substitua os nomes e dados acima pelos integrantes reais do seu grupo)*

---

## 🧭 Índice e Estrutura do Repositório

O projeto segue estritamente a padronização de diretórios orientada para avaliação:

```
📁 ormund-tale/
├── 📄 README.md              # Apresentação do jogo, equipe e sumário geral
├── 📁 docs/                   # Documentação conceitual e técnica
│   ├── 📁 sgdd/              # SGDD (Simplified Game Design Document) atualizado
│   ├── 📁 entidades/         # Especificação das entidades do jogo
│   └── 📁 componentes/       # Mapeamento detalhado de Entidades x Componentes
├── 📁 src/                    # Código-fonte do jogo (cenas, scripts, componentes)
│   ├── 📁 scenes/            # Cenas da Godot (.tscn)
│   └── 📁 scripts/           # Scripts GDScript (.gd) organizados por módulo
└── 📁 assets/                 # Recursos visuais, sonoros e fontes
    └── 📁 art_references/    # Painel de referências visuais e conceituais
```

### 🔗 Links Rápidos para a Documentação

1. **[SGDD do Jogo (Game Design Document)](file:///docs/sgdd/sgdd.md):** Visão completa de visão, pilares, narrativa, ciclo de gameplay e metas de entrega.
2. **[Entidades do Jogo](file:///docs/entidades/entidades.md):** Catálogo revisado com os heróis da dupla Tag-Team (**Delphy** e **Bazz**), inimigos natos, inimigos corrompidos, chefes trágicos e objetos do mundo.
3. **[Entidades com Componentes](file:///docs/componentes/componentes.md):** Matriz e diagramas de composição de nós (Entity-Component Pattern) na Godot 4.

---

## 🎮 Como Executar o Projeto

1. Baixe e instale a **[Godot Engine 4.x](https://godotengine.org/)** (versão Standard recomendada).
2. Abra a Godot e selecione **Importar**.
3. Navegue até a pasta raiz deste repositório e selecione o arquivo `project.godot`.
4. Pressione **F5** (ou o botão de Play no canto superior direito) para iniciar a sandbox de testes.

### 🕹️ Controles da Sandbox de Testes:
- **Mover para a Esquerda:** `A` ou `Seta Esquerda`
- **Mover para a Direita:** `D` ou `Seta Direita`
- **Pulo (com altura variável e coyote time):** `Espaço`, `W` ou `Seta Cima`

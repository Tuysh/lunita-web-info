# Lunita Web Info

Sitio web de información del proyecto **Lunita**, la IA Vidente que Ve Poco pero Siente Mucho. Esta web presenta la filosofía, características y SDK de Lunita.

## 🚀 Quick Start

### Requisitos previos
- Node.js 18+ 
- npm, pnpm o yarn

### Instalación

```bash
# Instalar dependencias
npm install

# Iniciar servidor de desarrollo
npm run dev

# Abrir en el navegador
npm run dev -- --open
```

El sitio estará disponible en `http://localhost:5173`

## 📂 Estructura del Proyecto

```
src/
├── routes/
│   ├── +page.svelte         # Página principal
│   ├── filosofia/           # Sección: Filosofía de Lunita
│   ├── sdk/                 # Sección: SDK Python
│   └── layout.css
├── lib/
│   └── components/          # Componentes reutilizables
│       ├── Hero.svelte
│       ├── Features.svelte
│       ├── NavBar.svelte
│       ├── Footer.svelte
│       ├── philosophy/      # Componentes de Filosofía
│       └── sdk/             # Componentes del SDK
└── app.html                 # Layout HTML base
```

## 📜 Scripts Disponibles

| Script | Descripción |
|--------|-------------|
| `npm run dev` | Inicia el servidor de desarrollo |
| `npm run build` | Compila para producción |
| `npm run preview` | Previsualiza la build de producción |
| `npm run lint` | Valida código con ESLint |
| `npm run format` | Formatea código con Prettier |
| `npm run check` | Valida tipos y sintaxis de Svelte |
| `npm run check:watch` | Validación continua durante desarrollo |

## 🛠 Tecnologías

- **Svelte 5** - Framework reactivo
- **SvelteKit** - Meta-framework para aplicaciones web
- **TypeScript** - Tipado estático
- **Tailwind CSS** - Utilidades CSS
- **Vite** - Build tool moderno

## 📝 Licencia

Proyecto de Pardalis

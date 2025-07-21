#!/bin/bash

# 🚀 Script de Deployment para FortiSASE Health Check en GitHub Pages
# Automatiza la creación del repositorio y configuración de GitHub Pages

set -e

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Función para logs con color
log() {
    echo -e "${BLUE}[$(date +'%Y-%m-%d %H:%M:%S')]${NC} $1"
}

success() {
    echo -e "${GREEN}✅${NC} $1"
}

warning() {
    echo -e "${YELLOW}⚠️${NC} $1"
}

error() {
    echo -e "${RED}❌${NC} $1"
}

echo "🚀 Configurando FortiSASE Health Check para GitHub Pages..."
echo ""

# Verificar si Git está instalado
if ! command -v git &> /dev/null; then
    error "Git no está instalado. Por favor instala Git primero."
    exit 1
fi

# Verificar si GitHub CLI está instalado
if ! command -v gh &> /dev/null; then
    warning "GitHub CLI no está instalado. Necesitarás crear el repositorio manualmente."
    echo "Puedes instalar GitHub CLI desde: https://cli.github.com/"
    MANUAL_REPO=true
else
    success "GitHub CLI detectado"
    MANUAL_REPO=false
fi

# Solicitar información del usuario
echo ""
log "Configuración inicial..."
read -p "Nombre de usuario de GitHub: " GITHUB_USERNAME
read -p "Nombre del repositorio (por defecto: fortisase-healthcheck): " REPO_NAME
REPO_NAME=${REPO_NAME:-fortisase-healthcheck}

read -p "¿Es un repositorio público? (y/N): " IS_PUBLIC
if [[ $IS_PUBLIC =~ ^[Yy]$ ]]; then
    REPO_VISIBILITY="public"
else
    REPO_VISIBILITY="private"
fi

# Directorio del proyecto
PROJECT_DIR="$REPO_NAME"

# Crear directorio del proyecto si no existe
if [ ! -d "$PROJECT_DIR" ]; then
    log "Creando directorio del proyecto: $PROJECT_DIR"
    mkdir -p "$PROJECT_DIR"
fi

cd "$PROJECT_DIR"

# Inicializar Git si no está inicializado
if [ ! -d ".git" ]; then
    log "Inicializando repositorio Git..."
    git init
    git branch -M main
fi

# Crear estructura de directorios
log "Creando estructura de directorios..."
mkdir -p .github/ISSUE_TEMPLATE
mkdir -p assets

# Crear archivo .gitignore
log "Creando .gitignore..."
cat > .gitignore << 'EOF'
# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# IDE files
.vscode/
.idea/
*.swp
*.swo
*~

# Node modules (if we add build process later)
node_modules/
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Build outputs
dist/
build/

# Temporary files
*.tmp
*.temp

# Log files
*.log
EOF

# Crear el index.html (necesitarás copiarlo del artifact anterior)
log "Creando index.html..."
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FortiSASE Health Check Dashboard</title>
    <meta name="description" content="Herramienta de análisis y optimización de aprovechamiento de licencias FortiSASE">
    <meta name="keywords" content="Fortinet, FortiSASE, SASE, Security, Dashboard, License Management">
    
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Recharts y React desde CDN -->
    <script crossorigin src="https://unpkg.com/react@18/umd/react.production.min.js"></script>
    <script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.production.min.js"></script>
    <script src="https://unpkg.com/recharts@2.8.0/umd/Recharts.js"></script>
    
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.js"></script>
    
    <!-- Babel para JSX -->
    <script src="https://unpkg.com/@babel/standalone/babel.min.js"></script>
    
    <style>
        /* Estilos básicos - necesitarás copiar el resto del artifact */
        .loading-spinner {
            border: 4px solid #f3f3f3;
            border-top: 4px solid #dc2626;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            animation: spin 1s linear infinite;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div id="root">
        <div class="min-h-screen bg-gray-50 flex items-center justify-center">
            <div class="text-center">
                <div class="loading-spinner mx-auto mb-4"></div>
                <p class="text-gray-600">Cargando FortiSASE Health Check Dashboard...</p>
                <p class="text-sm text-gray-500 mt-2">Por favor copia el código completo del React component aquí</p>
            </div>
        </div>
    </div>

    <!-- NOTA: Necesitas copiar aquí el código JavaScript completo del artifact anterior -->
    <script type="text/babel">
        // Aquí va el código del componente React del artifact anterior
        console.log("FortiSASE Health Check - Pendiente código completo");
    </script>
</body>
</html>
EOF

warning "IMPORTANTE: Necesitas copiar el código completo del componente React en index.html"

# Crear README.md
log "Creando README.md..."
cat > README.md << EOF
# 🔍 FortiSASE Health Check Dashboard

> **Herramienta de análisis y optimización de aprovechamiento de licencias FortiSASE**

[![Live Demo](https://img.shields.io/badge/Live%20Demo-GitHub%20Pages-brightgreen)](https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/)
[![Version](https://img.shields.io/badge/Version-1.0.0--beta-orange)](https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/releases)
[![License](https://img.shields.io/badge/License-MIT-blue)](LICENSE)
[![Feedback](https://img.shields.io/badge/Feedback-Welcome-yellow)](https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/issues/new?template=feedback.md)

## 🎯 ¿Qué es FortiSASE Health Check?

Una herramienta **interactiva y gratuita** que permite a organizaciones analizar el aprovechamiento de sus licencias FortiSASE, identificar oportunidades de optimización y generar reportes ejecutivos para la toma de decisiones estratégicas.

## 🚀 Demo en Vivo

**[👉 Prueba la herramienta aquí](https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/)**

## ✨ Características Principales

- 📊 **Dashboard Interactivo**: Visualización en tiempo real del estado de todas las funcionalidades FortiSASE
- 💰 **Análisis Financiero**: Cálculo de ROI, costos desperdiciados y oportunidades de ahorro
- 📈 **Métricas de Aprovechamiento**: Seguimiento detallado por funcionalidad con benchmarks industriales
- 📋 **Reportes Ejecutivos**: Generación automática de resúmenes para C-Level
- 💾 **Gestión de Configuración**: Exportación e importación de configuraciones para seguimiento histórico

## 🤝 Contribuir

¿Tienes ideas para mejorar esta herramienta? 

- 💡 [Compartir Feedback](https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/issues/new?template=feedback.md)
- 🐛 [Reportar Bug](https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/issues/new?template=bug_report.md)
- 📖 [Ver Guía de Contribución](CONTRIBUTING.md)

## 📄 Licencia

Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

---

**⭐ Si esta herramienta te resulta útil, considera darle una estrella al repositorio**

Made with ❤️ for the Cybersecurity Community
EOF

# Crear CONTRIBUTING.md básico
log "Creando CONTRIBUTING.md..."
cat > CONTRIBUTING.md << EOF
# 🤝 Guía de Contribución

¡Gracias por tu interés en contribuir al proyecto!

## 🎯 Formas de Contribuir

### 1. 💡 Compartir Feedback
- [Crear Feedback Issue](https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/issues/new?template=feedback.md)
- Compartir casos de uso reales
- Sugerir nuevas funcionalidades

### 2. 🐛 Reportar Bugs
- [Reportar Bug](https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/issues/new?template=bug_report.md)
- Incluir pasos para reproducir
- Adjuntar screenshots si es relevante

Ver el archivo completo de contribución para más detalles.
EOF

# Crear templates de issues
log "Creando templates de issues..."

# Template de feedback
cat > .github/ISSUE_TEMPLATE/feedback.md << 'EOF'
---
name: 💡 Feedback & Sugerencias
about: Comparte tu experiencia, sugerencias o casos de uso
title: '[FEEDBACK] '
labels: ['feedback', 'enhancement']
assignees: ''
---

## 🎯 Tipo de Feedback
- [ ] Sugerencia de nueva funcionalidad
- [ ] Mejora de funcionalidad existente
- [ ] Caso de uso específico
- [ ] Experiencia de usuario

## 📝 Descripción


## 💡 Valor Esperado


## 🔥 Prioridad
- [ ] Baja
- [ ] Media  
- [ ] Alta
EOF

# Template de bug report
cat > .github/ISSUE_TEMPLATE/bug_report.md << 'EOF'
---
name: 🐛 Bug Report
about: Reporta un problema o error en la aplicación
title: '[BUG] '
labels: ['bug', 'needs-triage']
assignees: ''
---

## 🐛 Resumen del Bug


## 🔄 Pasos para Reproducir
1. 
2. 
3. 

## ✅ Comportamiento Esperado


## ❌ Comportamiento Actual


## 💻 Información del Sistema
**Navegador:** 
**OS:** 
**Resolución:** 

## 🖼️ Screenshots
<!-- Si aplica -->
EOF

# Crear LICENSE
log "Creando LICENSE..."
cat > LICENSE << EOF
MIT License

Copyright (c) $(date +%Y) ${GITHUB_USERNAME}

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF

# Crear archivo placeholder para assets
log "Creando placeholder para assets..."
cat > assets/README.md << 'EOF'
# Assets

## Screenshots
- `preview.png` - Screenshot principal del dashboard para README

## Instrucciones
1. Toma un screenshot del dashboard funcionando
2. Nómbralo `preview.png`
3. Colócalo en este directorio
4. Actualiza el README principal para que se muestre correctamente
EOF

# Agregar archivos al staging
log "Agregando archivos a Git..."
git add .

# Hacer primer commit
log "Creando primer commit..."
git commit -m "🎉 Initial commit: FortiSASE Health Check Dashboard

- ✨ Add interactive dashboard for FortiSASE license analysis
- 📊 Add executive summary and financial metrics
- 🔧 Add configuration management and export/import
- 📝 Add comprehensive documentation and contribution guidelines
- 🐛 Add issue templates for feedback and bug reports
- 🚀 Ready for GitHub Pages deployment"

# Crear repositorio en GitHub si GitHub CLI está disponible
if [ "$MANUAL_REPO" = false ]; then
    log "Autenticando con GitHub..."
    if gh auth status &> /dev/null; then
        success "Ya estás autenticado con GitHub CLI"
    else
        log "Necesitas autenticarte con GitHub CLI..."
        gh auth login
    fi

    log "Creando repositorio en GitHub..."
    gh repo create "$REPO_NAME" --$REPO_VISIBILITY --source=. --remote=origin --push

    success "Repositorio creado exitosamente!"
else
    warning "Creación manual del repositorio requerida:"
    echo ""
    echo "1. Ve a https://github.com/new"
    echo "2. Nombre del repositorio: $REPO_NAME"
    echo "3. Visibilidad: $REPO_VISIBILITY"
    echo "4. NO inicialices con README, .gitignore o LICENSE (ya los tenemos)"
    echo "5. Crea el repositorio"
    echo ""
    echo "Luego ejecuta estos comandos:"
    echo "  git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
    echo "  git push -u origin main"
fi

echo ""
log "Configurando GitHub Pages..."

if [ "$MANUAL_REPO" = false ]; then
    # Habilitar GitHub Pages automáticamente
    log "Habilitando GitHub Pages desde main branch..."
    
    # Usar GitHub CLI para habilitar Pages
    if gh api repos/$GITHUB_USERNAME/$REPO_NAME/pages -X POST -f source.branch=main -f source.path=/ &> /dev/null; then
        success "GitHub Pages habilitado automáticamente!"
    else
        warning "No se pudo habilitar GitHub Pages automáticamente. Configuración manual requerida."
    fi
else
    warning "Configuración manual de GitHub Pages requerida:"
    echo "1. Ve a tu repositorio en GitHub"
    echo "2. Settings > Pages"
    echo "3. Source: Deploy from a branch"
    echo "4. Branch: main"
    echo "5. Folder: / (root)"
    echo "6. Save"
fi

echo ""
success "🎉 ¡Configuración completada!"
echo ""
echo "📋 Resumen:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📁 Directorio del proyecto: $(pwd)"
echo "🌐 URL del repositorio: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo "🚀 URL de GitHub Pages: https://$GITHUB_USERNAME.github.io/$REPO_NAME/"
echo ""
echo "⚠️  IMPORTANTES PASOS SIGUIENTES:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "1. 📝 Edita index.html y copia el código completo del componente React"
echo "2. 📸 Toma un screenshot del dashboard y guárdalo como assets/preview.png"
echo "3. 🔄 Commit y push los cambios:"
echo "   git add ."
echo "   git commit -m '🎨 Add complete React component and preview image'"
echo "   git push"
echo "4. ⏳ Espera 5-10 minutos para que GitHub Pages se active"
echo "5. 🎯 Visita tu dashboard en: https://$GITHUB_USERNAME.github.io/$REPO_NAME/"
echo ""
echo "🤝 Para contribuciones:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💡 Feedback: https://github.com/$GITHUB_USERNAME/$REPO_NAME/issues/new?template=feedback.md"
echo "🐛 Bug Report: https://github.com/$GITHUB_USERNAME/$REPO_NAME/issues/new?template=bug_report.md"
echo ""
echo "✨ ¡Tu herramienta FortiSASE Health Check está lista para el mundo!"

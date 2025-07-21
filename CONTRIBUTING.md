# 🤝 Guía de Contribución - FortiSASE Health Check

¡Gracias por tu interés en contribuir al proyecto! Tu feedback y colaboración son fundamentales para hacer de esta herramienta algo realmente útil para la comunidad de ciberseguridad.

## 🎯 Formas de Contribuir

### 1. 💡 Compartir Feedback y Sugerencias
- **[Crear Feedback Issue](https://github.com/tu-usuario/fortisase-healthcheck/issues/new?template=feedback.md)**
- Compartir casos de uso reales
- Sugerir nuevas funcionalidades
- Reportar experiencias de usuario

### 2. 🐛 Reportar Bugs
- **[Reportar Bug](https://github.com/tu-usuario/fortisase-healthcheck/issues/new?template=bug_report.md)**
- Incluir pasos para reproducir
- Adjuntar screenshots si es relevante
- Especificar navegador y versión

### 3. 📖 Mejorar Documentación
- Corregir errores de documentación
- Agregar ejemplos de uso
- Traducir contenido
- Mejorar explicaciones técnicas

### 4. 💻 Contribuir Código
- Implementar nuevas funcionalidades
- Optimizar rendimiento
- Mejorar UX/UI
- Agregar soporte para nuevas tecnologías

## 🚀 Proceso de Contribución

### Para Feedback y Sugerencias

1. **Revisa issues existentes** para evitar duplicados
2. **Usa el template apropiado** al crear un nuevo issue
3. **Sé específico** en tus descripciones
4. **Incluye contexto** sobre tu organización/caso de uso (opcional)

### Para Contribuciones de Código

1. **Fork** el repositorio
2. **Clona** tu fork localmente
   ```bash
   git clone https://github.com/tu-usuario/fortisase-healthcheck.git
   cd fortisase-healthcheck
   ```

3. **Crea una nueva rama** para tu contribución
   ```bash
   git checkout -b feature/descripcion-corta
   # o
   git checkout -b bugfix/descripcion-del-problema
   ```

4. **Desarrolla** tu contribución
   - Sigue las convenciones de código existentes
   - Asegúrate de que funcione en navegadores modernos
   - Testa tu código en diferentes resoluciones

5. **Commit** tus cambios
   ```bash
   git add .
   git commit -m "feat: descripción clara del cambio"
   ```

6. **Push** a tu fork
   ```bash
   git push origin feature/descripcion-corta
   ```

7. **Crea un Pull Request**
   - Usa una descripción clara del cambio
   - Referencias issues relacionados
   - Incluye screenshots si hay cambios visuales

## 📏 Estándares de Código

### HTML/CSS
- **Responsive Design**: Asegurar compatibilidad móvil
- **Accesibilidad**: Usar etiquetas semánticas y aria-labels
- **Performance**: Optimizar carga y renderizado
- **Cross-browser**: Probar en Chrome, Firefox, Safari, Edge

### JavaScript/React
- **ES6+**: Usar sintaxis moderna
- **Comentarios**: Documentar lógica compleja
- **Naming**: Nombres de variables y funciones descriptivos
- **Error Handling**: Manejo apropiado de errores

### UX/UI
- **Consistencia**: Mantener el diseño existente
- **Usabilidad**: Interfaces intuitivas y claras
- **Performance**: Evitar interacciones lentas
- **Feedback**: Proporcionar feedback visual al usuario

## 🎨 Guías de Diseño

### Colores Principales
- **Rojo Fortinet**: `#dc2626` (primary)
- **Grises**: `#374151`, `#6b7280`, `#9ca3af` (text/borders)
- **Success**: `#10b981` (green)
- **Warning**: `#f59e0b` (amber)
- **Error**: `#ef4444` (red)

### Tipografía
- **Primary**: System fonts (Tailwind CSS default)
- **Sizes**: text-sm, text-base, text-lg, text-xl, text-2xl, text-3xl
- **Weights**: font-medium, font-semibold, font-bold

### Espaciado
- **Margins/Padding**: Múltiplos de 4px (4, 8, 12, 16, 20, 24...)
- **Layouts**: Grid y flexbox para responsive design
- **Containers**: max-width apropiado para legibilidad

## 🧪 Testing

### Manual Testing Checklist
- [ ] **Responsive**: Probar en móvil, tablet, desktop
- [ ] **Browsers**: Chrome, Firefox, Safari, Edge
- [ ] **Functionality**: Todas las funciones trabajando
- [ ] **Performance**: Carga rápida y fluida
- [ ] **Accessibility**: Navegación con teclado
- [ ] **Data**: Import/export funcionando correctamente

### Testing de Funcionalidades Críticas
- [ ] **Configuración**: Cambios de licencias se reflejan correctamente
- [ ] **Cálculos**: Métricas financieras precisas
- [ ] **Storage**: LocalStorage funcionando
- [ ] **Export**: Archivos JSON válidos
- [ ] **Charts**: Gráficos renderizando correctamente

## 📝 Templates de Issues

### Template de Feedback
```markdown
**Tipo de Feedback**: [Sugerencia/Mejora/Caso de Uso]

**Descripción**:
Describe tu sugerencia o caso de uso...

**Contexto**:
- Tamaño de organización: [Pequeña/Mediana/Grande]
- Tipo de industria: [Opcional]
- Experiencia con FortiSASE: [Nuevo/Intermedio/Avanzado]

**Valor Esperado**:
¿Cómo ayudaría esta mejora?

**Prioridad**: [Baja/Media/Alta]
```

### Template de Bug Report
```markdown
**Resumen del Bug**: 
Descripción corta del problema...

**Pasos para Reproducir**:
1. Ir a...
2. Hacer clic en...
3. Ver error...

**Comportamiento Esperado**:
Qué debería suceder...

**Comportamiento Actual**:
Qué está sucediendo...

**Información del Sistema**:
- Navegador: [Chrome/Firefox/Safari/Edge] versión X
- OS: [Windows/Mac/Linux]
- Resolución de pantalla: [1920x1080/etc]

**Screenshots** (si aplica):
[Adjuntar imágenes]
```

## 🎖️ Reconocimientos

### Tipos de Contribuciones Valoradas

1. **🏆 Major Features**: Nuevas funcionalidades principales
2. **🔧 Bug Fixes**: Correcciones importantes
3. **📚 Documentation**: Mejoras significativas en docs
4. **💡 Ideas**: Sugerencias implementadas
5. **🧪 Testing**: Reportes detallados de bugs
6. **🎨 Design**: Mejoras de UX/UI
7. **🌍 Accessibility**: Mejoras de accesibilidad

### Hall of Fame
Los contribuidores destacados serán reconocidos en:
- **README principal** con mention especial
- **Release notes** de versiones
- **Contributors section** en la documentación

## 📞 Contacto para Contribuidores

### Canales de Comunicación
- **GitHub Issues**: Para reportes y sugerencias formales
- **GitHub Discussions**: Para conversaciones generales
- **Email**: tu-email@domain.com (para contribuciones mayores)

### Response Times
- **Issues**: Respuesta en 24-48 horas
- **Pull Requests**: Review en 48-72 horas
- **Questions**: Respuesta en 24 horas (días laborales)

## 📋 Checklist para Pull Requests

Antes de enviar tu PR, asegúrate de:

- [ ] **Código probado** en múltiples navegadores
- [ ] **Descripción clara** del cambio
- [ ] **Screenshots** si hay cambios visuales
- [ ] **Sin breaking changes** a menos que sea necesario
- [ ] **Documentación actualizada** si es relevante
- [ ] **Commits descriptivos** con buen formato

## 🙏 Código de Conducta

### Nuestros Valores
- **Respeto**: Tratamos a todos con profesionalismo
- **Inclusión**: Bienvenimos diversidad de perspectivas
- **Colaboración**: Trabajamos juntos hacia objetivos comunes
- **Aprendizaje**: Compartimos conocimiento abiertamente

### Comportamientos Esperados
- Usar lenguaje inclusivo y profesional
- Respetar diferentes puntos de vista
- Dar feedback constructivo
- Enfocarse en el beneficio de la comunidad

### Comportamientos Inaceptables
- Lenguaje ofensivo o discriminatorio
- Ataques personales o políticos
- Spam o autopromoción excesiva
- Compartir información privada sin permiso

---

<div align="center">

**🌟 ¡Gracias por contribuir a FortiSASE Health Check!**

Tu participación hace que esta herramienta sea mejor para toda la comunidad de ciberseguridad.

[🔙 Volver al README](README.md) | [📝 Crear Issue](https://github.com/tu-usuario/fortisase-healthcheck/issues/new)

</div>

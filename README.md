# Copilotos · PM de Contenido · HASH

Recursos del programa interno **PM de Contenido**. Cada curso del programa cierra con un copiloto: una guía de IA que acompaña a la PM a aplicar el método del curso en su trabajo real. Aquí viven en dos formatos:

- **Skill** (carpeta `skills/`): la versión instalable para Claude Code. Se instala una vez y queda como comando siempre disponible.
- **Prompt** (carpeta `prompts/`): la versión portable. Se copia y se pega como primer mensaje en cualquier chat de IA (ChatGPT, Claude, Gemini, Copilot).

## Instalar las skills (una línea)

Abre la terminal y pega:

```bash
curl -fsSL https://raw.githubusercontent.com/HASH-Marketing/pm-copilotos/main/install.sh | bash
```

Eso deja las skills en `~/.claude/skills/`. Abre (o reinicia) Claude Code y escribe `/` para verlas.

### Instalar a mano (si prefieres)

```bash
mkdir -p ~/.claude/skills/copiloto-planeacion-hash
curl -fsSL https://raw.githubusercontent.com/HASH-Marketing/pm-copilotos/main/skills/copiloto-planeacion-hash/SKILL.md \
  -o ~/.claude/skills/copiloto-planeacion-hash/SKILL.md
```

Repite con `copiloto-operacion-hash`, `copiloto-criterios-hash`, `copiloto-ritmo-hash`, `copiloto-metricas-hash` y `copiloto-creativeops-hash` para los demás copilotos.

## Los copilotos

| Curso | Copiloto | Para qué sirve |
|---|---|---|
| C01 · Planeación | `copiloto-planeacion-hash` | Convertir un brief en un plan defendible: backlog con pesos, tiempos en rangos, capacidad real, ruta crítica, colchón y reglas con el cliente. |
| C02 · Operar el plan | `copiloto-operacion-hash` | Volver visible la operación: mapa operativo con estados y VoBos, bloqueos con dueño, fuente de verdad y seguimiento semanal. |
| C03 · Calidad y aprobaciones | `copiloto-criterios-hash` | Que ninguna pieza avance por opinión: las tres puertas (entrada, terminada, aprobada), criterios verificables por formato, feedback consolidado en una sola decisión y versiones con rastro. |
| C04 · Ritmo de producción | `copiloto-ritmo-hash` | Regular el sistema: qué entra al ciclo, límites de piezas abiertas por etapa, política de cambios, urgentes con costo visible y cierre de ciclo con una mejora concreta. |
| C05 · Data-Driven PM | `copiloto-metricas-hash` | Leer datos para decidir la semana con dos lados separados: proceso (¿cómo estamos trabajando?) y público (¿qué funciona afuera?), con diccionario de métricas, alertas con umbral y máximo 3 decisiones con dueño y fecha. |
| C06 · Creative Ops y Escalabilidad | `copiloto-creativeops-hash` | Convertir una familia de contenido recurrente en un sistema reutilizable: master con ID, variantes enlazadas, versiones con estado, ficha con derechos y vigencia, y entregas completas. Marca PENDIENTE cuando falta evidencia. |

Cada copiloto entrega al final un bloque JSON que se importa directo en el worksheet del curso: el plan queda documentado sin capturarlo dos veces.

## Reglas de uso

- El copiloto propone. **La PM decide**: prioridades, compromisos con cliente, fechas finales y decisiones de negocio.
- No pegues información confidencial de clientes, presupuestos, credenciales ni datos personales en modelos públicos. Anonimiza o usa herramientas aprobadas por la agencia.

---

Programa interno HASH · PM de Contenido

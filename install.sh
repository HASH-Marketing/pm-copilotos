#!/usr/bin/env bash
# Instala los copilotos del programa PM de Contenido (HASH) como skills de Claude Code.
# Uso:  curl -fsSL https://raw.githubusercontent.com/HASH-Marketing/pm-copilotos/main/install.sh | bash
set -euo pipefail

REPO="https://raw.githubusercontent.com/HASH-Marketing/pm-copilotos/main"
SKILLS=("copiloto-planeacion-hash" "copiloto-operacion-hash" "copiloto-criterios-hash" "copiloto-ritmo-hash" "copiloto-metricas-hash" "copiloto-creativeops-hash")

echo "Instalando copilotos de PM de Contenido (HASH)..."
for s in "${SKILLS[@]}"; do
  mkdir -p "$HOME/.claude/skills/$s"
  curl -fsSL "$REPO/skills/$s/SKILL.md" -o "$HOME/.claude/skills/$s/SKILL.md"
  echo "  ✓ $s"
done

echo ""
echo "Listo. Abre (o reinicia) Claude Code y escribe / para ver tus copilotos."

#!/usr/bin/env bash
# Post-start command for Lovelace card development
set -e

# Activate the Home Assistant virtual environment
export PATH="/home/vscode/.local/ha-venv/bin:$PATH"

# Ensure directories exist
mkdir -p /workspaces/lovelace-abc-emergency-map/config/www
mkdir -p /workspaces/lovelace-abc-emergency-map/config/custom_components

# Ensure ABC Emergency integration is linked
if [ -d "/tmp/abcemergency/custom_components/abcemergency" ]; then
    ln -sf /tmp/abcemergency/custom_components/abcemergency /workspaces/lovelace-abc-emergency-map/config/custom_components/ 2>/dev/null || true
fi

# Update Node.js dependencies if needed
if [ -f "package.json" ]; then
    pnpm install 2>/dev/null || true
fi

# Update Python dependencies if needed
if [ -f "pyproject.toml" ]; then
    uv pip install -e ".[dev]" 2>/dev/null || uv pip install -e . 2>/dev/null || true
fi

# Deploy latest card build if it exists
if [ -f "dist/abc-emergency-map-card.js" ]; then
    cp dist/abc-emergency-map-card.js config/www/
fi

echo ""
echo "Dev container started."
echo "  ha     - Start Home Assistant"
echo "  dev    - Build card with watch mode"
echo "  deploy - Build and deploy card to HA"

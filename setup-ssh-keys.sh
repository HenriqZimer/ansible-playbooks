#!/bin/bash
# Script para copiar chaves SSH para todos os servidores

SERVERS=(
    "entei.henriqzimer.com.br"
    "raikou.henriqzimer.com.br"
    "suicune.henriqzimer.com.br"
    "altaria.henriqzimer.com.br"
    "zapdos.henriqzimer.com.br"
    "moltres.henriqzimer.com.br"
)

USER="henriqzimer"

echo "Este script vai copiar sua chave SSH pública para todos os servidores."
echo "Você precisará digitar a senha SSH para cada servidor."
echo ""

for server in "${SERVERS[@]}"; do
    echo "=========================================="
    echo "Copiando chave para: $server"
    echo "=========================================="
    ssh-copy-id -i ~/.ssh/id_rsa.pub "${USER}@${server}"
    
    if [ $? -eq 0 ]; then
        echo "✓ Chave copiada com sucesso para $server"
    else
        echo "✗ Falha ao copiar chave para $server"
    fi
    echo ""
done

echo "=========================================="
echo "Processo concluído!"
echo "Agora você pode executar: make ansible"
echo "=========================================="

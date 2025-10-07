#!/bin/bash

echo "=== Compilation des classes Java ==="
javac -cp src/main/java src/main/java/dao/*.java src/main/java/metier/*.java src/main/java/presentation/*.java

if [ $? -eq 0 ]; then
    echo "✅ Compilation réussie !"
    echo ""
    echo "=== Exécution de Presentation2 ==="
    java -cp src/main/java presentation.Presentation2
else
    echo "❌ Erreur de compilation"
    exit 1
fi

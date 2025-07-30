#!/bin/bash
echo "Generando carga de CPU durante 30 segundos..."
yes > /dev/null &
pid=$!
sleep 30
kill $PID
echo "Carga finalizada. Revisa el dashboard"

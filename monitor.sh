#bash
#!/bin/bash
# monitor.sh - registra uso de disco e memoria e avisa se o disco passar do limite

LIMITE=80
LOG="$HOME/linux-aws-lab/monitor.log"
USO=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

{
echo "=== $(date '+%Y-%m-%d %H:%M:%S') ==="
echo "Disco /: ${USO}% usado"
free -h | grep Mem
if [ "$USO" -ge "$LIMITE" ]; then
 echo "ALERTA: disco acima de ${LIMITE}%"
fi
} >> "$LOG"

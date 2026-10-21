# linux-aws-lab

Laboratório prático de Linux e automação, parte do meu caminho de suporte/infraestrutura para Cloud (AWS).

## monitor.sh

Script Bash que registra uso de disco e memória e gera um alerta quando o disco passa de um limite.

**O que faz**
- Lê o percentual de uso da partição `/`
- Registra data/hora, uso de disco e memória em `monitor.log`
- Escreve `ALERTA` no log se o uso passar do limite (padrão: 80%)

**Como usar**
```bash
chmod +x monitor.sh
./monitor.sh
cat monitor.log
```

**Agendamento com cron (a cada 5 minutos)**
```
*/5 * * * * /home/USUARIO/linux-aws-lab/monitor.sh
```

## Ambiente

- Debian (VirtualBox)
- Nginx, UFW, systemd, cron

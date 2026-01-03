#!/bin/bash

# 检查main.py进程是否在运行
if pgrep -f "main.py" > /dev/null; then
    echo "检测到main.py正在运行，正在停止该进程..."
    # 终止main.py进程
    pkill -f "main.py"
fi
# 等待2秒确保进程完全终止
sleep 2
# 启动main.py脚本
source ~/clawcloud-run/rss_venv/bin/activate
nohup python3 ~/clawcloud-run/main.py > /dev/null 2>&1 &

echo "脚本执行成功"
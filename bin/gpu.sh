#!/usr/bin/env bash
#
# This nvidia-smi comes from the WSL driver shim
# Simple 1s-refresh GPU dashboard for WSL/Ubuntu

SMI="$(command -v nvidia-smi || echo /usr/lib/wsl/lib/nvidia-smi)"
exec watch -n 1 "$SMI" \
  --query-gpu=index,name,temperature.gpu,utilization.gpu,utilization.memory,memory.used,memory.total \
  --format=csv



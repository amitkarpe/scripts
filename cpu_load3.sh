#!/bin/bash

total_cpu_core=${ cat /proc/cpuinfo  | grep processor | wc -l}
echo total_cpu_core
stress --cpu $total_cpu_core --timeout 60



exit

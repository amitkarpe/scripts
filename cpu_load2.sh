#!/bin/bash

# Source @ https://superuser.com/questions/443406/how-can-i-produce-high-cpu-load-on-a-linux-server

# Usage: lc [number_of_cpus_to_load [number_of_seconds] ]
lc() {
  (
    pids=""
	total_cpu_core=`cat /proc/cpuinfo  | grep processor | wc -l`
	echo $total_cpu_core
    cpus=${1:-4}    
    seconds=${2:-60}
    echo loading $cpus CPUs for $seconds seconds
    trap 'for p in $pids; do kill $p; done' 0
    for ((i=0;i<cpus;i++)); do while : ; do : ; done & pids="$pids $!"; done
    sleep $seconds
  )
}

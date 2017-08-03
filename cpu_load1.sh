#!/bin/bash

# Source @ https://stackoverflow.com/questions/2925606/how-to-create-a-cpu-spike-with-a-bash-command

cat /proc/cpuinfo  | grep processor | wc -l

fulload() {  dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null | dd if=/dev/zero of=/dev/null & }; fulload; read; killall dd

ps aux | grep 'dd ' | grep -v grep | wc -l

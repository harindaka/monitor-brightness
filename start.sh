#!/bin/bash

set -e

monitor-brightness $(xrandr | grep ' connected ' | awk '{ print$1 }') &

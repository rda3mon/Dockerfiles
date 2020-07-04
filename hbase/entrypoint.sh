#!/bin/bash

set -e

bash /opt/hbase/bin/hbase-daemon.sh --config $1 foreground_start master

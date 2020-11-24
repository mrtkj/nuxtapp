#!/bin/bash

/app/main
pm2 start pm2.config.js --no-daemon

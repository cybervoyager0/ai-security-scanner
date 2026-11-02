#!/bin/bash

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}[*] Setting up AI Security Scanner environment...${NC}"

# Python3 check
if ! command -v python3 &> /dev/null; then
    echo -e "${RED}[!] Python3 could not be found. Please install it first.${NC}"
    exit 1
fi

# Create virtual environment
python3 -m venv .venv
source .venv/bin/activate

# Upgrade pip & install requirements
pip install --upgrade pip > /dev/null 2>&1
pip install requests colorama > /dev/null 2>&1

echo -e "${GREEN}[+] Installation Completed Successfully!${NC}"
echo -e "${CYAN}[+] To run the tool, type: source .venv/bin/activate && python scanner.py${NC}"

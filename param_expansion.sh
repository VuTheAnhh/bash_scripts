#!/bin/bash

# Author: Vu The Anh
# Created: 06/09/2025
# Last Modified: 06/09/2025

# Description:
# Shell variable

# Usage:
# param_expansion

name=AnhVT

echo ${name}
echo ${name,}
echo ${name,,}

echo "----------"

echo ${USER^}
echo ${USER^^}

echo "----------"

# ${parameter:offset:length}

number=0123456789
echo ${number:1:5}
echo ${number:2}
echo ${number:2:}
echo ${number: -3:2}
echo ${number: -5}

exit 0

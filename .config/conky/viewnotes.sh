#!/bin/bash

cat ~/.config/conky/notes | sed 's/^/ \${color #ddddff}x  \$color /g'

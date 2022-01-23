#!/bin/bash
vim `grep -r $1 | cut -d ':' -f1`

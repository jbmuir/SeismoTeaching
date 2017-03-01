#!/bin/bash

pandoc task_1.md -o task_1.pdf  --latex-engine xelatex --variable mainfont=Palatino --variable fontsize=13

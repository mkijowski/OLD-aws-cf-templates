#!/bin/bash

#Need check if awscli is installed and configured...

aws s3 sync . s3://wsu-cecs-cf-templates --acl public-read --include "*.yml" --exclude ".git/*" --exclude "*.md" --exclude ".gitignore" --exclude "*.sh"


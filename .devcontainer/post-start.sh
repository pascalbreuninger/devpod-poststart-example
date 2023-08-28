#!/usr/bin/env bash

# Read and process the .tool-versions file
echo "Installing required asdf plugins..."
while IFS= read -r line; do
  tool_name=$(echo "$line" | awk '{print $1}')
  printf "\e[0;34mInstalling asdf plugin: %s...\e[0m\n" "$tool_name"
  asdf plugin-add "$tool_name"
done < .tool-versions

# Install required asdf versions
echo "Installing asdf tools..."
asdf install

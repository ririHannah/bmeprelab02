#!/usr/bin/env bash
# One-time setup: ARM toolchain + Pico SDK. Safe to re-run.
set -e
sudo apt-get update
sudo apt-get install -y cmake gcc-arm-none-eabi libnewlib-arm-none-eabi build-essential python3
if [ ! -d "$HOME/pico-sdk" ]; then
  git clone --depth 1 --recurse-submodules --shallow-submodules \
    https://github.com/raspberrypi/pico-sdk "$HOME/pico-sdk"
fi
echo "Pico SDK ready at $HOME/pico-sdk"

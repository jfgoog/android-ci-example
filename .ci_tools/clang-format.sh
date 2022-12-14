#!/bin/sh

# Guess ANDROID_HOME if it's not set, and also detect arch.
case $(uname -s) in
  Linux)
    ANDROID_HOME=${ANDROID_HOME:-${HOME}/Android/Sdk}
    ARCH_DIR=linux-x86_64
    ;;
  Darwin)
    ANDROID_HOME=${ANDROID_HOME:-${HOME}/Library/Android/sdk}
    ARCH_DIR=darwin-x86_64
esac

NDK_VERSION=25.1.8937393

${ANDROID_HOME}/ndk/${NDK_VERSION}/toolchains/llvm/prebuilt/${ARCH_DIR}/bin/clang-format $@

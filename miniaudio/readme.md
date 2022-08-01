# Mini audio

## Compile

## Android

```bash
/home/azkadev/Android/Sdk/ndk/24.0.8215888/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=aarch64-linux-android21 ./audio.c -o ./audio.so -shared -ldl -lm 
```

## Linux

```bash
gcc ./audio.c -o ./audio.so -shared -ldl -lm 
```
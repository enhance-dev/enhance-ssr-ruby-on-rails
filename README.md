# Enhance SSR Ruby on Rails Example
This project demonstrates using Enhance to serverside render components in Rails.

## Install Extism Runtime Dependency
For this library, you first need to install the Extism Runtime by following the instructions in the [Ruby SDK Repository](https://github.com/extism/ruby-sdk#install-the-extism-runtime-dependency).

```sh
curl https://get.extism.org/cli | sh
sudo extism lib install latest
```

## Download Enhance SSR wasm
The compiled WASM already exists in `lib/enhance-ssr.wasm`, but you can also download the latest release of the compiled wasm:
```sh
curl -L https://github.com/enhance-dev/enhance-ssr-wasm/releases/download/v0.0.3/enhance-ssr.wasm.gz | gunzip > lib/enhance-ssr.wasm
```

## Run
1. Install Dependencies
```sh
bundle install
```
2. Run Server
```sh
bin/rails server
```
3. load http://localhost:3000

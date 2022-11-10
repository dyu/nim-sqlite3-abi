# nim-sqlite3-abi

[![License: Apache](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
![Stability: experimental](https://img.shields.io/badge/stability-experimental-orange.svg)

A low-level Nim wrapper for the [SQLite](https://www.sqlite.org/). Builds and exposes the raw C API of SQLite 3.

## Building `wrap.nim`

Place this in `/usr/local/bin/zcc`:
```sh
#!/bin/sh

zig cc $ZCC_OPTS $@
```

Install modified niminterop
```sh
git clone --depth=1 --single-branch -b clang-from-env https://github.com/dyu/nimterop.git
cd nimterop && nimble install && cd ..
```

Build
```sh
#nimble install -d
nim c -d:release wrap.nim
```

Cross-compile to windows
```sh
CC=zig ZCC_OPTS='-target x86_64-windows-gnu' nim c --cc:env \
-o:dist/x86_64-windows-gnu/bin/hello.exe --nimcache:dist/x86_64-windows-gnu \
--os:windows --cpu:amd64 -d:release \
wrap.nim
```

## Usage

TODO

## Versioning

The library generally follows the upstream version number, adding one more number for its own purpose

## License

### Wrapper License

This repository is licensed and distributed under either of

* MIT license: [LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT

or

* Apache License, Version 2.0, ([LICENSE-APACHEv2](LICENSE-APACHEv2) or http://www.apache.org/licenses/LICENSE-2.0)

at your option. This file may not be copied, modified, or distributed except according to those terms.

### Dependency License

SQLite Is Public Domain. See [their licensing page](https://www.sqlite.org/copyright.html) for further information.


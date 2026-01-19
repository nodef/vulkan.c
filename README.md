<!--
Copyright 2018-2023 The Khronos Group Inc.

SPDX-License-Identifier: Apache-2.0
-->

# Vulkan-Headers

Vulkan header files and API registry

This repository contains Vulkan header files, include files for C and C++,
and related scripts and tests.

Most of the files in this repository are sourced from, or generated from,
other repositories as described in [CONTRIBUTING.md](https://github.com/KhronosGroup/Vulkan-Headers/blob/main/CONTRIBUTING.md).
Vulkan-Headers exists as a staging area for these files, most of which are
then consumed by downstream repositories used to build SDK components such
as the Vulkan Validation Layers and Conformance Test Suite.

Developers normally obtain headers from the official
[Vulkan-SDK](https://www.lunarg.com/vulkan-sdk/).
They can also use headers from, or packaged from, this repository.

In most cases, developers should only need the headers, not the scripts and
other material in this repository.
If you need to run the scripts, please use them from their canonical source
in the [Vulkan Specification
repository](https://github.com/KhronosGroup/Vulkan-Docs).

<br>

## Installation

Run:

```sh
$ npm i vulkan.c
```

And then include `vulkan.h` as follows:

```c
// main.c
#include <vulkan/vulkan.h>

int main() { /* ... */ }
```

Finally, compile while adding the path `node_modules/vulkan.c` to your compiler's include paths.

```bash
$ clang -I./node_modules/vulkan.c main.c  # or, use gcc
$ gcc   -I./node_modules/vulkan.c main.c
```

You may also use a simpler approach with the [cpoach](https://www.npmjs.com/package/cpoach.sh) tool, which automatically adds the necessary include paths of all the installed dependencies for your project.

```bash
$ cpoach clang main.c  # or, use gcc
$ cpoach gcc   main.c
```

<br>

## Contributing

See the [CONTRIBUTING.md](https://github.com/KhronosGroup/Vulkan-Headers/blob/main/CONTRIBUTING.md)

<br>

## Building

See [BUILD.md](https://github.com/KhronosGroup/Vulkan-Headers/blob/main/BUILD.md)

<br>

## SDK Support

Vulkan-Headers are shipped as part of the official [Vulkan-SDK](https://www.lunarg.com/vulkan-sdk/)

<br>

## C/C++ Package Manager Support

`Vulkan-Headers` are also supported by both [conan](https://conan.io/) & [vcpkg](https://learn.microsoft.com/en-us/vcpkg/).

<br>

## Version Tagging Scheme

Updates to this repository which correspond to a new Vulkan specification release are tagged using the following format: `v<`_`version`_`>` (e.g., `v1.3.266`).

**Note**: Marked version releases have undergone thorough testing but do not imply the same quality level as SDK tags. SDK tags follow the `vulkan-sdk-<`_`version`_`>.<`_`patch`_`>` format (e.g., `vulkan-sdk-1.3.266.0`).

This scheme was adopted following the `1.3.266` Vulkan specification release.

<br>
<br>


[![](https://raw.githubusercontent.com/qb40/designs/gh-pages/0/image/11.png)](https://wolfram77.github.io)<br>
[![SRC](https://img.shields.io/badge/src-repo-green?logo=Org)](https://github.com/KhronosGroup/Vulkan-Headers)
[![ORG](https://img.shields.io/badge/org-nodef-green?logo=Org)](https://nodef.github.io)
![](https://ga-beacon.deno.dev/G-RC63DPBH3P:SH3Eq-NoQ9mwgYeHWxu7cw/github.com/nodef/vulkan.c)

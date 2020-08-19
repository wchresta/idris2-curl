# idris2-curl - A primitive Idris 2 wrapper for libcurl easy

This library provides wrappers around `libcurl`'s easy interfaces
that are very close to the C interface but also reasonably type-safe.

For example, we provide safe types for the `curl_easy_setopt`
function that has a dependently typed parameter type.

## Installation

Use `idris2 --install curl.ipkg` which will install the package
to your `IDRIS2_PREFIX`. We also provide some nix derivation, but
you probably want to adapt those to your needs.

## Example usage

Check `test/Main.idr` on example usage.

## Stability / State

This is in very early development. Play around, but don't use it
for anything important. If you run into issues, open an issue on Github.

The interface for callbacks is still not figured out, so you'll have to
do without it for the moment.






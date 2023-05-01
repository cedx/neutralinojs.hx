# Usage
This library introduces the `js.Neutralino` class, which is a wrapper around the native API.

```haxe
// TODO Sample code
```

API documentation for the `neutralinojs` externs is available at the following address:  
[https://docs.belin.io/neutralinojs.hx/api](api/)

> For more information about the Neutralinojs APIs, see [Native API Overview](https://neutralino.js.org/docs/api/overview)
in the [Neutralinojs documentation](https://neutralino.js.org/docs).

When this library is imported by the [Haxe compiler](https://haxe.org/manual/compiler-usage.html),
the `neutralinojs` conditional compilation flag is automatically defined.
This flag is useful if you are developing in parallel a web application and a desktop one based on the same code:
it allows you to create different branches depending on the targeted platform.

```haxe
#if neutralinojs
import js.Neutralino;
#else
import js.Browser;
#end

// Opens a given URL in the browser.
function main() {
  #if neutralinojs
    Neutralino.os.open("https://docs.belin.io/neutralinojs.hx");
  #else
    Browser.window.open("https://docs.belin.io/neutralinojs.hx", "_blank");
  #end
}
```

> For more information about conditional compilation flags,
see [Conditional Compilation](https://haxe.org/manual/lf-condition-compilation.html) in the [Haxe manual](https://haxe.org/manual).

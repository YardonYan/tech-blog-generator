# Common Pitfalls by Language

## Go
| Symptom | Root Cause | Solution |
|---------|------------|----------|
| `fatal error: all goroutines asleep - deadlock` | Unbuffered channel with no receiver | Add buffer or ensure receiver exists |
| `panic: concurrent map read and write` | Concurrent map access without sync | Use sync.RWMutex or sync.Map |
| `nil pointer dereference` | Returning nil struct pointer | Initialize struct before returning |
| `context deadline exceeded` | Operation took too long | Add timeout to context |
| `connection refused` | Server not listening | Check if server is started before client |

## Python
| Symptom | Root Cause | Solution |
|---------|------------|----------|
| `IndentationError` | Mixed tabs/spaces | Configure editor to use spaces only |
| `NameError: name 'x' is not defined` | Variable scope issue | Check variable initialization |
| `TypeError: 'NoneType' object is not iterable` | Returning None instead of empty collection | Return `[]` instead of `None` |
| `UnicodeEncodeError` | Non-ASCII characters in print | Set `PYTHONIOENCODING=utf-8` |
| `ModuleNotFoundError` | Missing pip install | Add to requirements.txt |

## JavaScript/TypeScript
| Symptom | Root Cause | Solution |
|---------|------------|----------|
| `Cannot read property 'x' of undefined` | Accessing property on null/undefined | Optional chaining (`?.`) |
| `Promise.pending` | Not awaiting async function | Use `await` or `.then()` |
| `CORS error` | Cross-origin request blocked | Configure CORS headers |
| `Maximum call stack size exceeded` | Infinite recursion | Add termination condition |
| `Variable used before declaration` | Temporal dead zone | Move let/const above usage |

## Java
| Symptom | Root Cause | Solution |
|---------|------------|----------|
| `NullPointerException` | Calling method on null object | Check null before call |
| `ConcurrentModificationException` | Modifying collection while iterating | Use iterator or copy |
| `OutOfMemoryError` | Memory leak or large data | Increase heap or optimize |
| `IllegalStateException` | Method called in wrong state | Check state machine |

## Rust
| Symptom | Root Cause | Solution |
|---------|------------|----------|
| `borrow checker error` | Mutable/immutable borrow conflict | Restructure ownership |
| `cannot borrow as mutable because it is also borrowed as immutable` | Multiple immutable borrows | Clone or restructure |
| `thread 'main' panicked` | Unwrap on None/Err | Use `?` or match |
| `ownership moved here` | Value moved without clone | Clone or borrow |

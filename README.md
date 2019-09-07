# Rust Github Action

sample usage

```yaml
name: Test
on: [push]

jobs:
  build:
    name: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - uses: cyplo/rust-action@master
        with:
          args: "cargo fmt -- --check && cargo clippy -- -Dwarnings && cargo test"
```

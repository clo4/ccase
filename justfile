default: run

test:
    cargo test

watch:
    watchexec -c -w src -- just test

watch-help:
    watchexec -c -w src -- cargo run -q -- -h

watch-long-help:
    watchexec -c -w src -- cargo run -q -- --help

run *ARGS :
    cargo run -- {{ARGS}}

dry-publish:
    cargo publish --dry-run

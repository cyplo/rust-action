FROM rust:1.37.0

LABEL "com.github.actions.name"="Rust Action"
LABEL "com.github.actions.description"="Rust"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="gray-dark"

RUN rustup default stable
RUN rustup component add clippy
RUN rustup component add rustfmt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

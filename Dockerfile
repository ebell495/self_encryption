FROM rust:latest as builder
COPY . /self_encryption/
WORKDIR /self_encryption/
RUN cargo build --example basic_encryptor

FROM debian:bullseye-slim
COPY --from=builder /self_encryption /self_encryption

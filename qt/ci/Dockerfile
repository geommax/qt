FROM debian:stable-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    git \
    cmake \
    ninja-build \
    curl \
    wget \
    clang \
    lld \
    libgl1-mesa-dev \
    libxkbcommon-dev \
    && rm -rf /var/lib/apt/lists/*

# Create mount points
RUN mkdir -p /home/bot/dk_volumes /dk_volume
VOLUME ["/home/bot/dk_volumes", "/dk_volume"]

# Set working directory
WORKDIR /dk_volume

# Install Emscripten in dk_volume
RUN git clone https://github.com/emscripten-core/emsdk.git /dk_volume/emsdk && \
    cd /dk_volume/emsdk && \
    ./emsdk install latest && \
    ./emsdk activate latest

# Set up environment variables
ENV PATH="/dk_volume/emsdk:/dk_volume/emsdk/upstream/emscripten:$PATH"
ENV EMSDK="/dk_volume/emsdk"
ENV EM_CONFIG="$EMSDK/.emscripten"

CMD ["/bin/bash"]


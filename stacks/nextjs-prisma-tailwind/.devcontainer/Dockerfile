# Dockerfile for my-project dev container
FROM node:20-slim

# Install pnpm globally
RUN npm install -g pnpm

# Set working directory
WORKDIR /workspace

# Copy the setup script from the devcontainer context
COPY setup.sh /workspace/setup.sh
RUN chmod +x /workspace/setup.sh

# Execute setup during image build
RUN /workspace/setup.sh

# Default command to start the app
CMD ["pnpm", "dev"]

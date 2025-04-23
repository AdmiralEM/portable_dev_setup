
FROM node:20-slim

RUN npm install -g pnpm

WORKDIR /workspace

COPY setup.sh /workspace/setup.sh
RUN chmod +x /workspace/setup.sh

RUN /workspace/setup.sh

CMD ["pnpm", "dev"]

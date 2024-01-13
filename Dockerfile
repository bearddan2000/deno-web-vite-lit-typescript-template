FROM archlinux

WORKDIR /workspace

RUN pacman -Syy

RUN pacman -S --noconfirm deno

COPY bin .

# For doc purpose only
# npm vite@latest
# Other > create-vite-extra > deno-lit > Typescript

CMD "deno task dev"
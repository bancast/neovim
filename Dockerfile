# neovim
#
# VERSION       0.1

FROM alpine:3.5

LABEL maintainer "Jack Stephenson <docker@bancast.net>"

RUN apk add --no-cache neovim git curl && \
    mkdir -p /root/.config/nvim/autoload /root/.config/nvim/bundle && \
    curl -LSso /root/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim && \
    cd /root/.config/nvim/bundle && \
    git clone --depth 1 https://github.com/tpope/vim-fugitive && \
    git clone --depth 1 https://github.com/scrooloose/nerdtree && \
    git clone --depth 1 https://github.com/scrooloose/syntastic && \
    git clone --depth 1 https://github.com/tpope/vim-surround && \
    git clone --depth 1 https://github.com/kien/ctrlp.vim && \
    git clone --depth 1 https://github.com/altercation/vim-colors-solarized && \
    git clone --depth 1 https://github.com/airblade/vim-gitgutter && \
    git clone --depth 1 https://github.com/editorconfig/editorconfig-vim.git && \
    apk del --no-cache curl && \
    mkdir -p /src

COPY .vimrc /root/.config/nvim/init.vim

WORKDIR /src

ENTRYPOINT ["nvim"]
CMD ["/src"]

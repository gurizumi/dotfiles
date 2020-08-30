# bash_aliasesをロード
if [ -f "${HOME}/.bash_aliases" ]; then
    source "${HOME}/.bash_aliases"
fi

# config
export XDG_CONFIG_HOME="$HOME/.config"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$HOME/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src"

# Ruby
# rbenvコマンドがある場合のみ
if type rbenv > /dev/null 2>&1; then
	eval "$(rbenv init -)"
fi

# fishがインストールされているなら実行
if type fish > /dev/null 2>&1; then
	exec fish
fi

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

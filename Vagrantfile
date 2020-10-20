
Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    sudo apt-get update

    # TODO: Install pyenv prerequisites
    sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

    # TODO: Install pyenv
    rm -R ~/.pyenv

    git clone https://github.com/pyenv/pyenv.git ~/.pyenv

    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

    echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

    exec "$SHELL"

    sudo apt-get update; sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

    pyenv install --verbose 3.8.5

    pyenv global 3.8.5

SHELL

end

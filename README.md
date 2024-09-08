# Dotfiles Repository

This repository contains my personal configuration files (dotfiles) for various tools and applications. These dotfiles help to set up a consistent development environment across different machines.

## Dependencies

The config file will setup completions and PATH exports for the following tools:

- Dotnet SDK
- Nodejs 20 (Installed via Homebrew)

## Contents

- **.zshrc**: Configuration file for Zsh shell.
- **.gitconfig**: Configuration file for Git.

## Installation

To set up these dotfiles on your machine, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   ```

2. Navigate to the dotfiles directory:
   ```sh
   cd ~/dotfiles
   ```

3. Run the setup script to create symlinks:
   ```sh
   ./setup.sh
   ```

### Adding gpg signing key

The repo contains a [git hook script](./.gitattributes) to remove the gpg signing key from the gitconfig file before commit. To add the gpg signing key to the gitconfig file, run the following commands:

```sh
gpg --list-keys --keyid-format LONG
```

Remember to add the gpg signing key to the gitconfig file:

```sh
git config --global user.signingkey <key>
```

## Contributing

If you have any improvements or suggestions, please feel free to open an issue or submit a pull request.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

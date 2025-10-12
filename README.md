# Dotfiles

Ansible playbook for setting up a macOS development environment.

## Prerequisites

- macOS
- [Homebrew](https://brew.sh/)
- Ansible (`brew install ansible`)

## Setup

1. Clone this repository:
```bash
git clone https://github.com/reckerp/dotfiles
cd dotfiles
```

2. Install required Ansible collections:
```bash
ansible-galaxy collection install -r requirements.yml
```

3. Create vault password file (if using encrypted variables):
```bash
echo "your-vault-password" > .vault_pass
```

4. Run the playbook:
```bash
ansible-playbook main.yml --ask-become-pass
```

## Usage

### Run all roles
```bash
ansible-playbook main.yml --ask-become-pass
```

### Run specific roles
```bash
ansible-playbook main.yml --tags "zsh,git" --ask-become-pass
```

### Available tags
- `casks` - Install GUI applications
- `tools` - Install CLI tools
- `langs` / `languages` - Install programming languages
- `rust` - Install Rust toolchain
- `nvm` - Install Node Version Manager
- `gh` - Install GitHub CLI extensions
- Individual role names: `zsh`, `git`, `neovim`, `tmux`, `starship`, `ghostty`, `aerospace`, `wakatime`

### Exclude roles
```bash
ansible-playbook main.yml --ask-become-pass -e "exclude_roles=['casks','tools']"
```

## Customization

### Add/remove applications
Edit `group_vars/all.yml` and modify:
- `cask_apps` - GUI applications
- `homebrew_packages` - CLI tools
- `homebrew_cask_packages` - Developer tools (Docker, Typst, etc.)
- `languages` - Programming languages

### Add Homebrew taps
Add to `homebrew_taps` list in `group_vars/all.yml`

## Roles

- **zsh** - ZSH shell configuration
- **ghostty** - Ghostty terminal emulator
- **starship** - Starship prompt
- **tmux** - Tmux configuration
- **git** - Git configuration and signing keys
- **neovim** - Neovim configuration
- **wakatime** - WakaTime time tracking
- **aerospace** - AeroSpace window manager
- **langs** - Programming languages (Go, Node, Python, Rust, Bun)
- **tools** - CLI tools and development utilities
- **casks** - GUI applications

## Vault

Sensitive data (API keys, SSH config, Git signing keys) is encrypted with Ansible Vault.

To edit encrypted variables:
```bash
ansible-vault edit group_vars/all.yml
```

To encrypt a new value:
```bash
ansible-vault encrypt_string 'secret-value' --name 'variable_name'
```

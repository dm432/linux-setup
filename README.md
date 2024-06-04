# Setup for my Ubuntu installation 
[![Code license (MIT)](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/dm432/post-install/blob/master/LICENSE)

This repo contains Ansible playbooks to configure your system as a development machine upon a clean install. The playbooks should run in Debian based system with minor modifications but was only tested with __Ubuntu 24.04__.

## 🔧 How to use
#### Prerequisites:
- [Ansible](https://github.com/ansible/ansible): `sudo apt install ansible`

#### Steps:
- **Step 1** Clone the repo:
  ```bash
  git clone https://github.com/dm432/linux-setup.git && cd linux-setup
  ```
- **Step 2** Select what you want to install: 
    1. `cp inventory.ini inventory_local.ini` 
    2. Open the `inventory_local.ini` file with your favorite edior and change the boolean flags.
- **Step 3**: Run the playbooks using the `setup.sh` script:
  ```bash
  chmod +x setup.sh
  ./setup.sh
  ```
- **_Please Note:_** The playbooks may overwrite your existing files! Make sure to back them up.

#### Manual Steps that may be required:
- _zsh as default shell:_ You may have to set default shell shell yourself to `/bin/zsh` for example if you are using distributed authentication.
- _terminal font:_ You have to set your terminal font to `JetbrainsMono Nerd Font`. (The font will be downloaded and installed by the ansible playbooks).

---

## 📖 Neovim config
<details>
  <summary>Key Bindings: All remapped key bindings (and some default ones that I tend to forget)</summary>

  | Action                                                    | Key            |
  | --------------------------------------------------------- |--------------  |
  | Exit insert mode                                          | `jk`           |
  | *Clear* Search Highlight                                  | `Space + c`    |
  | *Project View*: Open                                      | `Space + pv`   |
  | *Project View*: Create file                               | `%`            |
  | *Project View*: Create folder                             | `d`            |
  | Find file in project (*Project Find*)                     | `Space + pf`   |
  | Find file in git repository                               | `Ctrl + p`     |
  | Search for word under cursor in project files             | `Space + pws`  |
  | Search for Word under cursor in project files             | `Space + pWs`  |
  | Search text in project files (*Project Search*)           | `Space + ps`   |
  | Search for neovim help tags (*Vim Help*)                  | `Space + vh`   |
  | Autocomplete: Open                                        | `Ctrl + Space` |
  | Autocomplete: Previous                                    | `Ctrl + p`     |
  | Autocomplete: Next                                        | `Ctrl + n`     |
  | Autocomplete: Confirm                                     | `Ctrl + y`     |
  | *Harpoon*: Toggle quick menu                              | `Ctrl + h`     |
  | Harpoon: Add file                                         | `Space + a`    |
  | Harpoon: Jump to file 1                                   | `Ctrl + a`     |
  | Harpoon: Jump to file 2                                   | `Ctrl + s`     |
  | Harpoon: Jump to file 3                                   | `Ctrl + d`     |
  | Harpoon: Jump to file 4                                   | `Ctrl + f`     |
  | Fugitive: Open *Git* status                               | `Space + g`    |
  | Open Mason menu                                           | `:Mason`       |

</details>

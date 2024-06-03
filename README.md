# Setup for my Ubuntu installation 
[![Code license (MIT)](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/dm432/post-install/blob/master/LICENSE)

This repo contains Ansible playbooks to configure your system as a development machine upon a clean install. The playbooks should run in Debian based system with minor modifications but was only tested with __Ubuntu 24.04__.

## 🔧 How to use
#### Prerequisites:
- [Ansible](https://github.com/ansible/ansible): `sudo apt install ansible`

#### Steps:
- **Step 1**: Clone the repo using `git clone`.
- **Step 2** (optional): Select what you want to install by changing the boolean flags in the `inventory.ini` file.
- **Step 3**: Run the playbooks using the `setup.sh` script:
  ```bash
  chmod +x setup.sh
  ./setup.sh
  ```
- **_Please Note:_** The playbooks may overwrite your existing files! Make sure to back them up.

---

## 📖 Neovim config
<details>
  <summary>Key Bindings: All remapped key bindings (and some default ones that I tend to forget)</summary>

  | Action                                                    | Key            |
  | --------------------------------------------------------- |-------------   |
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

</details>

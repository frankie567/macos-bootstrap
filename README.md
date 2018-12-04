# macos-bootstrap

Script to setup a nice developer environment on macOS:

* Install Brew 🍺
* Install latest Git
* Install `pyenv` Python version manager and setup Python 3.7 by default
* Install `nvm` NodeJS version manager ans setup latest NodeJS by default
* Install `httpie` and `jq` utilities
* Install Visual Studio Code editor
* Install Google Chrome
* Put a nice default `.bash_profile` with:
  * Finder and VS Code CLI shortcuts
  * Custom Git PS1
* Generate a SSH key

## Usage

```bash
curl -o- https://raw.githubusercontent.com/frankie567/macos-bootstrap/master/macos-bootstrap.sh | bash
```

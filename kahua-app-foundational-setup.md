# Foundational Setup for Kahua 

## Description
These are general notes on updating Node NVM in Git Bash, updating NPM, and installing Yeoman.

## Installing/Updating NVM in Git Bash
- Documentation: GitHub - nvm-sh/nvm: Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
- Install in Git Bash instructions:
    - `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh |bash`
    - Verify installation by closing ajnd reopening bash and running:
        - `command -v nvm`

## Updating/Installing NPM
- Run the following command in Git Bash
    - `npm update -g`
- Review list of dependencies (could be empty since NPM install hasn't been ran yet)
    - `npm list --depth=0`
- Review local packages
    - `npm list`
- Check globally installed packages
    - `npm list -g`


## Installing Yeoman
Installing Yeoman with Node now tha8t NPM and NVM have been installed/updated:
 - Verify Node and NPM are installed:
    - `node --version && npm --version
 - Git version
    - `git --version`
 - Install yeoman toolset
    - npm install --global yo 

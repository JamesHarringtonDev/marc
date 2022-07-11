# Marc - Maintain All Run Commands

Marc is a tool that helps develop and maintain all run commands for you Mac/Linux terminal.

Marc allows users to manage their CLI run commands in smaller, easier to manage fragments. Users are free to organize their run commands however they wish while Marc handles updating the rc config files be it .zshrc, .bashrc or anywhere.

Marc does not require any additional changes to your commands and you are free to manage fragments as you wish. To update your run commands, simply merge a branch containing the updates with main and Marc will the config files.

## Git Hooks

Git hooks are enabled.

1. pre-commit - This prevents commits to main
1. post-merge - If a branch is merged into the main, the run command files are updated

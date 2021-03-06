#!/usr/bin/env bash

# apply settings
cp $DOTFILES_DIR/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"

# install extensions
code --install-extension Arjun.swagger-viewer
#code --install-extension bbenoist.vagrant
code --install-extension dbaeumer.vscode-eslint
code --install-extension EditorConfig.EditorConfig
code --install-extension eg2.tslint
#code --install-extension jebbs.plantuml
#code --install-extension mjmcloug.vscode-elixir
code --install-extension mrmlnc.vscode-scss
# code --install-extension msjsdiag.debugger-for-chrome
# code --install-extension nobuhito.printcode
code --install-extension PeterJausovec.vscode-docker
code --install-extension rbbit.typescript-hero
# code --install-extension redhat.java
#code --install-extension sammkj.vscode-elixir-formatter
code --install-extension sasa.vscode-sass-format
# code --install-extension vscjava.vscode-java-debug
# code --install-extension vscjava.vscode-java-pack
# code --install-extension vscjava.vscode-java-test
# code --install-extension vscjava.vscode-maven
# code --install-extension wmaurer.change-case
# code --install-extension yzane.markdown-pdf
code --install-extension yzhang.markdown-all-in-one

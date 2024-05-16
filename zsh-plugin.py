import os, sys

def pluggins():
    with open(os.path.expanduser('~/.zshrc')) as zsh_file:
        print(zsh_file.name)
        replaced_string = zsh_file.read().replace("plugins=(git)","plugins=(zsh-autosuggestions zsh-syntax-highlighting)")
        print(replaced_string)
        with open(zsh_file.name,"w+") as new_file:
            new_file.write(replaced_string)
pluggins()

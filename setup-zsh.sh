[1]
sudo apt install zsh shell
sudo chsh 'the shell username'
# paste
/bin/zsh

# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


[2]
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



[3]
# For plugins (Note: make sure 2 add Dis two plugins in ~/.zshrc before source ~/.zshrc)
python3 -c 'exec('"'"'def main():\n    import os, sys\n    with open(os.path.expanduser('~/.zshrc')) as fi:\n        hh = fi.read()\n    j = hh.replace("plugins=(git)","plugins=(zsh-autosuggestions zsh-syntax-highlighting)")\n    with open(fi.name,\'"'"'w+\'"'"') as fi:\n        fi.write(j)\n    # That was fun!\n\nif __name__ == "__main__" or True:\n\n    \n\n    main()\n'"'"')'

# or zsh-plugin.py and paste code below .

import os, sys

def pluggins():
    with open(os.path.expanduser('~/.zshrc')) as zsh_file:
        print(zsh_file.name)
        replaced_string = zsh_file.read().replace("plugins=(git)","plugins=(zsh-autosuggestions zsh-syntax-highlighting)")
        print(replaced_string)
        with open(zsh_file.name,"w+") as new_file:
            new_file.write(replaced_string)
pluggins()






[4]
# For themes use This (Note: this is for p10k)
#-- Setup Alias in $HOME/zsh/aliasrc
touch "$HOME/.cache/zshhistory" && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k &&




[5]
echo "Now run source .zshrc"
#or use
p10k configure

# or choose other themes from here
# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

[6]
# change nano look for coding better
sudo rm /etc/nanorc
sudo cp nanorc /etc/nanorc

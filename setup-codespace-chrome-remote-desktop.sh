sudo apt update

sudo DEBIAN_FRONTEND=noninteractive \
    apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

sudo apt install ubuntu-desktop screen

wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

sudo apt install ./chrome-remote-desktop_current_amd64.deb

sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'

sudo service lightdm stop

go https://remotedesktop.google.com/ click
"access my computer"
"setup via ssh
"Begin", "Next", "Authorize"

Then copy the debian linux command
"DISPLAY= /opt/google/chrome-remote-desktop/start-host --code=".... " --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)

and paste in codespace linux
Enter 6 minimum key as password

Then go back to chrome remote desktop tab and click

"remote Access"

then you will see your computer there .



sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser

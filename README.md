# InstallBetterVM

so i made a script based on mkcvm that does this shit:
1. install packages (curl, qemu, qemu utils)
2. installs updates (cuz node wasnt working unless i did that)
3. downloads and runs mkcvm
4. downloads dark mode
5. sets up a windows 7 vm with no turns or resets
6. makes admin password

# How to install
For Debian:
<code>sudo apt install -y git && git clone https://github.com/imightexist/InstallBetterVM && cd InstallBetterVM && chmod +x mkbettervm.sh && ./mkbettervm.sh</code>

For Arch:
<code>sudo pacman -Sy git && git clone https://github.com/imightexist/InstallBetterVM && cd InstallBetterVM && chmod +x archuntested.sh && ./archuntested.sh</code>

# Supported Distros
debian and arch (untested)

if i get it to work, there might be a windows version

# Not fixed yet
1. resetting admin pass for better usage
2. It seems that libjpeg.so.62 is not working which i guess is needed for collabvm to work

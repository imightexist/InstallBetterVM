echo we are gonna remove mkcvm cuz i think its fucked
sudo apt-get -y update
sudo apt-get install -y curl
mkdir ~/bettervm/
cd ~/bettervm
curl -Lk https://hfs-redirect.glitch.me/mkcvm.html --output mkcvm.sh
sudo apt-get install -y qemu
sudo apt-get install -y qemu-utils
sudo apt-get install -y libjpeg62
chmod u+x mkcvm.sh
~/bettervm/mkcvm.sh
cd ~/Downloads
curl -0 http://mirror.rackspace.com/archlinux/iso/2021.12.01/archlinux-2021.12.01-x86_64.iso --output 7.iso
qemu-img create -f qcow2 disk.qcow2 30G
mv ./disk.qcow2 ~/Downloads/disk.qcow2
cd ~/bettervm
curl -Lk https://hfs-redirect.glitch.me/bettervmindex2.html --output temp.html
curl -Lk https://hfs-redirect.glitch.me/bettervmindex3.html --output light.html
curl -Lk https://hfs-redirect.glitch.me/cvmdatabase.html --output collab-vm.db
rm ~/cvm/final/http/index.html
mv ~/bettervm/light.html ~/cvm/final/http/index.html
mv ~/bettervm/collab-vm.db ~/cvm/final/collab-vm.db
mkdir ~/cvm/final/http/dark/
cp ~/bettervm/temp.html ~/cvm/final/http/dark/index.html
cp ~/cvm/final/http/all.min.js ~/cvm/final/http/dark/all.min.js
cp ~/cvm/final/http/all.min.js.map ~/cvm/final/http/dark/all.min.js.map
cp ~/cvm/final/http/dot.gif ~/cvm/final/http/dark/dot.gif
cp ~/cvm/final/http/news.html ~/cvm/final/http/dark/news.html
cp ~/cvm/final/http/notify.m4a ~/cvm/final/http/dark/notify.m4a
cp ~/cvm/final/http/notify.mp3 ~/cvm/final/http/dark/notify.mp3
cp ~/cvm/final/http/notify.ogg ~/cvm/final/http/dark/notify.ogg
cp ~/cvm/final/http/rules.html ~/cvm/final/http/dark/rules.html
cp ~/cvm/final/http/faq.html ~/cvm/final/http/dark/faq.html
cd ~/cvm/final/http/dark
mkdir admin
cp ~/cvm/final/http/admin/index.html ~/cvm/final/http/dark/admin/index.html
cp ~/cvm/final/http/admin/config.html ~/cvm/final/http/dark/admin/config.html
cp ~/cvm/final/http/admin/admin.min.js ~/cvm/final/http/dark/admin/admin.min.js
curl -Lk https://hfs-redirect.glitch.me/darkcss.html --output main.css
~/cvm-start.sh -t lt

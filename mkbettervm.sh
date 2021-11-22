echo This script is the improved version of mkcvm by totallyNotAUser
echo btw totallyNotAUser pls come back to collabvm
echo Note: this does take a while so you should sit back and go take a shit
sudo apt-get -y update
sudo apt-get install -y curl
mkdir ~/bettervm/
cd ~/bettervm
curl -0 http://amogus.uk/public2/bettervm/mkcvm.sh --output mkcvm.sh
sudo apt-get install -y qemu
sudo apt-get install -y qemu-utils
chmod u+x mkcvm.sh
~/bettervm/mkcvm.sh
cd ~/Downloads
curl -0 http://download2282.mediafire.com/p48ipiz0fxqg/sj7694734mb06jv/downloadisofile.blogspot.com_Tiny7.iso --output 7.iso
qemu-img create -f qcow2 disk.qcow2 30G
mv ./disk.qcow2 ~/Downloads/disk.qcow2
cd ~/bettervm
curl -0 http://amogus.uk/public2/bettervm/bettervmindex2.asd --output temp.html
curl -0 http://amogus.uk/public2/bettervm/bettervmindex3.asd --output light.html
curl -0 http://amogus.uk/public2/bettervm/collab-vm3.db --output collab-vm.db
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
curl -0 http://amogus.uk/public2/bettervm/dark.css --output main.css
sudo ~/cvm-start.sh -t lt

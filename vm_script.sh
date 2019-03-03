mkdir -p /Volumes/Storage/goinfre/$USER/vagrant
echo 'export VAGRANT_HOME=/Volumes/Storage/goinfre//vagrant' >> ~/.zshrccd /Volumes/Storage/goinfre/$USER/vagrant
cat > Vagrantfile << EOM

Vagrant.configure("2") do |config|
	config.vm.box = "debian/stretch64"
	config.vm.synced_folder ".", "/git"
end

EOM
vagrant up
vagrant plugin install vagrant-vbguest
vagrant vb-guest
vagrant reload
cd /Volumes/Storage/goinfre/$USER/vagrant
vagrant ssh

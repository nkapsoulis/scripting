# NOT TESTED
sudo stop network-manager
sudo cp /backup/path/etc/NetworkManager/system-connections/* /etc/NetworkManager/system-connections/
sudo chown root.root /etc/NetworkManager/system-connections/*
sudo start network-manager

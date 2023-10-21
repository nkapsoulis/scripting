# Tip
#Regularly "sudo apt-get update && sudo apt-get upgrade" my Ubuntu to be faster and not lagging.

# Error example w/ Skype
# W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: https://repo.skype.com/deb stable InRelease: The following signatures were invalid: EXPKEYSIG 1F3045A5DF7587C3 Skype Linux Client Repository <se-um@microsoft.com>
# W: Failed to fetch https://repo.skype.com/deb/dists/stable/InRelease  The following signatures were invalid: EXPKEYSIG 1F3045A5DF7587C3 Skype Linux Client Repository <se-um@microsoft.com>
# W: Some index files failed to download. They have been ignored, or old ones used instead.

# Respective solution
sudo apt-key del 1F3045A5DF7587C3
curl https://repo.skype.com/data/SKYPE-GPG-KEY | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/skype-stable-archive-keyring.gpg
sudo nano /etc/apt/sources.list.d/skype-stable.list
# Replace first line with:
deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/skype-stable-archive-keyring.gpg] https://repo.skype.com/deb stable main
sudo apt update && sudo apt upgrade 




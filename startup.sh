#! /usr/bin/env bash

# install packages
echo "[STEP 1/3] Downloading python3-serial..."
sudo apt-get install python3-serial
if ["$?" -eq "0"]
then
	echo "Download successful..."
else
	echo "Download failed..."
fi

# download goodfet
echo "[STEP 2/3] Downloading goodfet..."
git clone https://github.com/travisgoodspeed/goodfet goodfet
if ["$?" -eq "0"]
then
        echo "Download successful..."
else
        echo "Download failed..."
fi

# link client scripts
echo "[STEP 3/3] Linking client scripts..."
cd goodfet/client && sudo make link
if ["$?" -eq "0"]
then
        echo "Download successful..."
else
        echo "Download failed..."
fi

# store env var
echo "export board=goodfet41" >> ~/.bashrc


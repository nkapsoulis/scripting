#!/bin/bash

# https://itectec.com/ubuntu/ubuntu-how-to-install-google-chrome-extensions-though-terminal/

install_chrome_extension () {
  preferences_dir_path="/opt/google/chrome/extensions"
  pref_file_path="$preferences_dir_path/$1.json"
  upd_url="https://clients2.google.com/service/update2/crx"
  mkdir -p "$preferences_dir_path"
  echo "{" > "$pref_file_path"
  echo "  \"external_update_url\": \"$upd_url\"" >> "$pref_file_path"
  echo "}" >> "$pref_file_path"
  echo Added \""$pref_file_path"\" ["$2"]
}

install_chrome_extension "nkbihfbeogaeaoehlefnkodbefgpgknn" "metamask"
install_chrome_extension "cfhdojbkjhnklbpkdaibdccddilifddb" "adblock-plus"

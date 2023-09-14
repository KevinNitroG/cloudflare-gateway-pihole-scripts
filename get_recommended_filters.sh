#!/bin/bash

source $(dirname "$0")/lib/helpers.sh

# declare an array of urls
urls=(
  # https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_adblock.txt
  # https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_gambling.txt
  # https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_privacy.txt
  # https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts
  # https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt
  # https://adaway.org/hosts.txt
  # https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts

  # USER LIST
  # https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
  # https://raw.githubusercontent.com/hagezi/dns-blocklists/main/domains/light.txt
  # https://o0.pages.dev/Lite/hosts.txt
  https://raw.githubusercontent.com/bigdargon/hostsVN/master/option/domain.txt
  https://abpvn.com/android/abpvn.txt
  https://raw.githubusercontent.com/Veticia/antipopads/master/hosts
  https://raw.githubusercontent.com/luxysiv/hosts/main/hosts.txt
  https://luxysiv.github.io/custom-filters/adhell-ext.txt
  https://abpvn.com/android/abpvn.txt
  https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Xiaomi-Extension.txt
  https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/xiaomi
  https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Extension/GoodbyeAds-Samsung-AdBlock.txt
  https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/samsung
  https://malware-filter.gitlab.io/malware-filter/vn-badsite-filter-hosts.txt
  https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt
)

# download all files in parallel and append them to input.csv
download_lists $urls 'input.csv'

# print a message when done
echo "Done. The input.csv file contains merged data from recommended filter lists."

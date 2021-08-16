#!/bin/bash

target_dir="mon-kb"
target_url="https://github.com/TaoMonLae/mon_keyboard_linux/raw/main"
files=("mnw" "mon_kb.sh")
echo "🔰 Started download file and script 📂"

if [ -d $target_dir ]; then
    rm -rf $target_dir
fi

for url in "${files[@]}"; do
    wget -c -q "${target_url}${url}" -P "$target_dir" --show-progress && chmod +x "${target_dir}/${url}" || {
        echo "Download failed 🥺"
        exit 1
    }
done
cd $target_dir

echo ""
echo "✅ Ready to install 🥳"
echo ""
echo "ℹ️  Usage: "
echo "   [1] cd $target_dir"
echo "   [2] ./mon_kb.sh install|uninstall"

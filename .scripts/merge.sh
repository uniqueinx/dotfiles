set -e
echo "[+] Merging config"
git merge config -m "config"

echo "[+] Merging pertag"
git merge pertag -m "pertag"

echo "[+] Merging systray"
git merge systray -m "systray"

#echo "[+] Merging uselessgaps"
#git merge uselessgaps -m "uselessgaps"

#echo "[+] Merging colorbar"
#git merge colorbar -m "colorbar"

echo "Done"

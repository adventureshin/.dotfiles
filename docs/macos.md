macOS
========

```bash
# Use sudo with TouchID
cat <<< 'auth sufficient pam_tid.so' | sudo tee -a /etc/pam.d/sudo_loca

# 영어 키 꾹 누르면 키 반복되게 만들기
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# 한글에서 원화기호(₩) 대신 backtick(\) 입력되게 만들기
set -C
mkdir -p ~/Library/KeyBindings
echo '{"₩"=("insertText:", "\`");}'>~/Library/KeyBindings/DefaultKeyBinding.dict
```

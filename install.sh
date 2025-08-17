echo "Installing Dependencies"
# Packages
brew tap FelixKratz/formulae
brew install sketchybar

# Fonts
brew install --cask sf-symbols
brew install --cask font-sf-mono
brew install --cask font-sf-pro
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.28/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
brew install jq


# MacOS config (on user logged in profile)
defaults write com.apple.universalaccess reduceMotion -bool true
defaults write com.apple.spaces spans-displays -bool false # Displays have separate Spaces
defaults write com.apple.dock autohide -bool true
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false # 'false' Scrolling and swiping gesture will have same direction
defaults write com.apple.finder DisableAllAnimations -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "clmv" # 'clmv' set view in Finder as Column View

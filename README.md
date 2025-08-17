# Tips

- command to set maximise screen of Rectangle have a margin top to not override sketchby bar

```bash
defaults write com.knollsoft.Rectangle screenEdgeGapTop -int {margin_top:int}
```

- Reference dotfiles:
  - [repo dotfiles](https://github.com/FelixKratz/dotfiles/tree/master)
  - [blog setup](https://www.josean.com/posts/sketchybar-setup)

## To-do list

- [ ] write an install.sh script to backup and create symbol link from git repo to configuration folder (reference: [mehd-io repo](https://github.com/mehd-io/dotfiles/blob/main/install.sh))

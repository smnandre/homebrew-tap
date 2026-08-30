# smnandre Homebrew Tap

## Formulae

`brew install smnandre/tap/<formula>`

Or `brew tap smnandre/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "smnandre/tap"
brew "<formula>"
```

## Casks

Install Symfony CLI Menu Bar with its fully qualified cask name:

```bash
brew install --cask smnandre/tap/symfony-cli-menubar
```

This adds the tap and trusts this cask. Subsequent commands can use the short name:

```bash
brew upgrade --cask symfony-cli-menubar
brew uninstall --cask symfony-cli-menubar
```

If Homebrew reports that the cask is not trusted:

```bash
brew trust --cask smnandre/tap/symfony-cli-menubar
```

Trust only the cask, not the entire tap.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

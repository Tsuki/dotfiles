module.exports = {
  brew: [
    'ack',
    // Install GNU core utilities (those that come with OS X are outdated)
    // Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    'coreutils',
    'dos2unix',
    // Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
    'findutils',
    'fortune',
    'gawk',
    // http://www.lcdf.org/gifsicle/ (because I'm a gif junky)
    'gifsicle',
    'gnupg',
    // Install GNU `sed`, overwriting the built-in `sed`
    // so we can do "sed -i 's/foo/bar/' file" instead of "sed -i '' 's/foo/bar/' file"
    'gnu-sed --default-names',
    // better, more recent grep
    'homebrew/dupes/grep',
    'imagemagick',
    // jq is a sort of JSON grep
    'jq',
    // Install some other useful utilities like `sponge`
    'moreutils',
    'nmap',
    'openconnect',
    'reattach-to-user-namespace',
    // better/more recent version of screen
    'homebrew/dupes/screen',
    'tree',
    'ttyrec',
    // better, more recent vim
    'vim',
    'watch',
    // Install wget with IRI support
    'wget --enable-iri',
    'node',
    'htop',
    'p7zip',
    'unrar',
    'python3',
    'jp2a',
    'git-extras',
    'freetype',
    'ssh-copy-id',
    'sdkman'
  ],
  cask: [
    '1password',
    'smartgit',
    'alfred',
    'sequel-pro',
    'istat-menus',
    'smoothmouse',
    'google-chrome',
    'owncloud',
    'diffmerge',
    'iterm2',
    'spectacle',
  ],
  gem: [
  ],
  npm: [
  ]
};

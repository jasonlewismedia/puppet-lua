# Public: Install lua into Homebrew
#
# Examples
#
#   include lua
class lua {
  include homebrew

  package { 'lua': }

  homebrew::formula { 'lua':
    before => Package['boxen/brews/lua'],
  }

  package { 'boxen/brews/lua': }
}

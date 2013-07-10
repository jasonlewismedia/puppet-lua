# Public: Install tomcat into Homebrew
#
# Examples
#
#   include tomcat
class grails {
  include homebrew

  package { 'tomcat': }

  homebrew::formula { 'tomcat':
    before => Package['boxen/brews/tomcat'],
  }

  package { 'boxen/brews/tomcat': }
}

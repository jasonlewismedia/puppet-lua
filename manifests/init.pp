# Public: Install tomcat into Homebrew
#
# Examples
#
#   include tomcat
class tomcat {
  include homebrew

  package { 'tomcat': }

  homebrew::formula { 'tomcat':
    before => Package['boxen/brews/tomcat'],
  }

  package { 'boxen/brews/tomcat': }
}

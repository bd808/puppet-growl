# Public: Install Growl.pkg to /Applications.
#
#
# Examples
#
#   include growl_fork
class growl_fork {
  package { 'Growl Fork':
    source   => 'https://bitbucket.org/pmetzger/growl/downloads/Growl-1.2.2f1.dmg',
    provider => 'appdmg'
  }
}
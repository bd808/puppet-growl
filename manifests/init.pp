# Public: Install Growl.pkg to /Applications.
#
#
# Examples
#
#   include growl
class growl {
  package { 'Growl Fork':
    source   => 'https://bitbucket.org/pmetzger/growl/downloads/Growl-1.2.2f1.dmg',
    provider => 'pkgdmg',
  }

  package { 'Growl Fork Notify':
    source   => 'https://bitbucket.org/PeteMS/growl-fork/downloads/growlnotify.dmg',
    provider => 'pkgdmg',
    require  => Package['Growl Fork'],
  }

}

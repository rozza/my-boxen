# Public: Install Skype.app to /Applications.
#
# Examples
#
#   include skype
class skype {
  package { 'Skype':
    provider => 'appdmg',
    source   => 'http://download.skype.com/macosx/Skype_6.12.60.431.dmg',
  }
}

# == Class: flowdock
#
# Installs the latest version of the Flowdock Mac application
#
# === Authors
#
# Robby Colvin <geetarista@gmail.com>
#
class flowdock {
  package { 'Flowdock':
    provider => 'compressed_app',
    source   => 'https://d2ph5hv9wbwvla.cloudfront.net/mac/Flowdock_v1_0_8.zip',
  }
}

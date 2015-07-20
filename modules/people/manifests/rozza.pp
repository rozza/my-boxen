class people::rozza {

  include iterm2::dev
  include wget
  include zsh

  include adium
  include chrome
  include dropbox
  include flowdock
  include skype

  include virtualbox
  include vagrant

  #
  # Remove services we don't want
  #
  service {"dev.nginx":
      ensure => "stopped",
  }

  $my_home  = "/Users/${::luser}"
  $projects = "${my_home}/vagrant/code/rozza"

  file { $projects:
    ensure => directory,
  }

  $dotfiles = "${projects}/dotfiles"

  repository { $dotfiles:
    source  => 'rozza/dotfiles',
    require => File[$projects],
    notify  => Exec['rozza-make-dotfiles'],
  }

  exec { 'rozza-make-dotfiles':
    command     => "cd ${dotfiles} && make",
    refreshonly => true,
  }
}

class people::rozza {

  include iterm2::dev
  include slate
  include wget
  include zsh

  include adium
  include chrome
  include dropbox
  include skype

  include sublime_text

  class { 'intellij':
    edition => 'ultimate',
     version => '13.1.1'
  }

  #include virtualbox
  #include vagrant

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

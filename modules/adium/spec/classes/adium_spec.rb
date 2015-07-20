require 'spec_helper'

describe 'adium' do

  version = '1.5.9'

  it { should contain_class('adium') }
  it { should contain_package("Adium-#{version}").with_provider('appdmg') }
  it { should contain_package("Adium-#{version}").with_source("http://download.adium.im/Adium_#{version}.dmg") }

end

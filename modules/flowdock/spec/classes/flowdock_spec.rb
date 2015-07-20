require 'spec_helper'

describe 'flowdock' do
  it do
    should contain_package('Flowdock').with({
      :provider => 'compressed_app',
      :source   => 'https://d2ph5hv9wbwvla.cloudfront.net/mac/Flowdock_v1_0_8.zip',
    })
  end
end

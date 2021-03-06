require 'spec_helper'
describe 'ghost::blog', type: :define do
  let :facts do
    {
      osfamily: 'Debian',
      lsbdistid: 'Debian',
      lsbrelease: 'wheezy'
    }
  end

  let(:title) { 'my_blog' }

  describe 'defaults' do
    it do
      should contain_exec('curl_ghost_my_blog')
    end
    it do
      should contain_exec('unzip_ghost_my_blog')
    end
  end
end

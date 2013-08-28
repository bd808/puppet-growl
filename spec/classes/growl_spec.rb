require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'growl' do
  it do
    should contain_package('Growl Fork').with({
      :source   => 'https://bitbucket.org/pmetzger/growl/downloads/Growl-1.2.2f1.dmg',
      :provider => 'pkgdmg',
    })

    should contain_package('Growl Fork Notify').with({
      :source   => 'https://bitbucket.org/PeteMS/growl-fork/downloads/growlnotify.dmg',
      :provider => 'pkgdmg',
    })
  end
end

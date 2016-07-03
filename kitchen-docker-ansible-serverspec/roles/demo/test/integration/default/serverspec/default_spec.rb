require 'serverspec'

set :backend, :exec

describe package('httpd') do
    it { is_expected.to be_installed }
end

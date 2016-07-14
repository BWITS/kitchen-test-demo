require 'serverspec'

set :backend, :exec

describe package('apache2') do
  it { should be_installed }
end

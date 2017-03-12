require 'spec_helper'

describe command('docker --version') do
    its(:stdout) { should include 'Docker version 17.03' }
end

describe command('sudo docker ps') do
    its(:stdout) { should include 'jenkins' }
end

describe command('sudo docker port $(sudo docker ps -q)') do
    its(:stdout) { should include '50000/tcp -> 0.0.0.0:50000' }
    its(:stdout) { should include '8080/tcp -> 0.0.0.0:8080' }
end

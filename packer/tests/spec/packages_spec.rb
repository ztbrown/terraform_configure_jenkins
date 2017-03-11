require 'spec_helper'

describe command('docker --version') do
      its(:stdout) { should include 'Docker version 17.03' }
end


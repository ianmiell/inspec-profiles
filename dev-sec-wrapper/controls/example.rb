# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'sample section'

# you can also use plain tests
describe file('/tmp') do
  it { should be_directory }
end

# you add controls here
control 'tmp-1.0' do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title 'Create /tmp directory'             # A human-readable title
  desc 'An optional description...'
  describe file('/tmp') do                  # The actual test
    it { should be_directory }
  end
end

include_controls 'linux-baseline'
include_controls 'php-baseline'
include_controls 'postgres-baseline'
include_controls 'ssh-baseline'
include_controls 'ssl-baseline'
include_controls 'linux-patch-baseline'
include_controls 'cis-linux-benchmark'
include_controls 'apache-benchmark'
include_controls 'cve-2016-5195'

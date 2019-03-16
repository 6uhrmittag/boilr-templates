# encoding: utf-8
{{ if eq includeDemo "Y" }}
control 'check x' do
	impact 'critical'
	title 'check thingx'
	desc 'visible description'

	describe service('apache2') do
		it { should be_installed }
		it { should be_enabled }
		it { should be_running }
	end

    describe command('/sbin/mdadm /dev/md0') do
        its('stdout') { should match /raid1 2 devices/ }
        its('exit_status') { should eq 0 }
    end

    describe filesystem('/dev/md0') do
      its('type') { should cmp 'btrfs' }
      its('size_kb') { should be >= 900 * 1024}
      its('percent_free') { should be >= 80 }
    end

    describe file('path') do
        it { should exist }
        it { should be_directory }
        it { should be_file }

        its('content') { should match /MATCHSTRING/ }
        its('mode') { should cmp '0644' }
    end

end
{{ end }}



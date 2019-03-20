# encoding: utf-8

# This file uses external .yml files to parameterize the tests.
# packages.yml:
# - package_name: curl
# services.yml:
# - service_name: sshd
#   port: 22 (Port is optional)

# Files are stored at '$profilename/files'
packages = yaml(content: inspec.profile.file('{{ CheckName }}_packages.yml')).params
services = yaml(content: inspec.profile.file('{{ CheckName }}_services.yml')).params

control '{{ CheckName }}' do

    title 'Packages and Services that should be installed and enabled'
    desc '
    Packages and Services that should be installed, enabled and listening.
    '
    impact 'critical'

    # Packages
    packages.each do |s|
        describe package(s['package_name']) do
            it { should be_installed }
        end
    end


    # Services
    services.each do |s|
      describe service(s['service_name']) do
          it { should be_installed }
          it { should be_enabled }
          it { should be_running }
    end

    # Service Ports
    if s['port'].is_a? Integer
        describe port(s['port']) do
              it { should be_listening }
          end
        end
    end

end
This template generates a Vagrantfile including bootstrap script and optional Puppetmanifest.

## general
- SSH-Password-Login is enabled by default!
- `.gitignore` ignores `.vagrant/` + `*log`

## Scripts
- `internal/bootstrap.sh` script runs at `vagrant up` + `vagrant reload`
- `internal/destroy.sh` action on VM before `vagrant destroy`
- `internal/destroy.bat` removes .vagrant dir + .log on Windows Host after `vagrant destroy`

## Puppet
Agent is required - answer `Y` during `boilr use` to auto-install agent on VM
- `puppet/manifests/default.pp` Manifest to provision VM
- `puppet/modules/` save modules here
- `puppet/Puppetfile` (not used yet)

## Plugins
- `vagrant-cachier` shares and mounts apt-cache with central cache on host. Produces a `Warning` during apt usage which can be ignored
- `update_guestools` Auto-Update guesttools. Disabled -> delays initial startup dramatically!
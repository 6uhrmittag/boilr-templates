# Template to generate a inSpec control with external .yml files.
This control is useful  to create simple controls very fast.
The control is prepared to check for packages and services - optionally ports that are listening.

Ideally one control should be used for each function.

use directly inside `$inspecProfileDir`
````bash
boilr template use inspec-control .
````

## demo
````bash
marvin@admindojo: cd training/webserver-apache-basic-1-ub18/
marvin@admindojo: ls
README.md  controls  inspec.lock  inspec.yml  libraries  tests                                                                                                                           

marvin@admindojo: boilr template use inspec-control .
[?] Please choose a value for "CheckName" [default: "check"]: elastic
[✔] Created controls/elastic.rb
[✔] Created files/elastic_packages.yml
[✔] Created files/elastic_services.yml
[✔] Successfully executed the project template inspec-control in /home/marvin/Projects/admindojo-trainings/webserver-apache-basic-1-ub18/training/webserver-apache-basic-1-ub18

marvin@admindojo: ls 
README.md  controls  files  inspec.lock  inspec.yml  libraries  tests
````
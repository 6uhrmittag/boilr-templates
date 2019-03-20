# Template to generate a inSpec control with external .yml files.
Create simple controls quickly.

The control is prepared to check for:
- packages
- services
    - ports(optional)

Create one control for each function-group like "webserver", "mysql".

1. use directly inside `$inspecProfileDir`
````bash
boilr template use inspec-control .
````

2. add packages and services to files/$checkname.yml:

$checkname_packages.yml:
````yaml
- package_name: curl
````
$checkname_services.yml:
````yaml
- service_name: sshd
  port: 22
````

3. edit title and destription in $checkname.rb
4. add manual checks : https://www.inspec.io/docs/reference/resources/

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
<h1 align="center">
  <p align="center">{{ Projectname }}</p>
  {{ if eq logo_in_docs "Y" }}
  <a href="https://github.com/{{GithubUsername}}/{{GithubReponame}}"><img height="300" src="https://github.com/{{GithubUsername}}/{{GithubReponame}}/tree/master/docs/logo.png" alt="{{ Projectname }}"></a>
{{ end }}
</h1>

<p align="center">
{{ if eq Travis "Y" }}
    <a href="https://travis-ci.org/{{GithubUsername}}/{{GithubReponame}}"><img src="https://img.shields.io/travis/{{GithubUsername}}/{{GithubReponame}}.svg" alt="Travis Status"></a>
{{ end }}
    <img alt="GitHub issues" src="https://img.shields.io/github/issues/{{GithubUsername}}/{{GithubReponame}}.svg?style=flat-square">
    <img alt="GitHub" src="https://img.shields.io/github/license/{{GithubUsername}}/{{GithubReponame}}.svg?style=flat-square">
</p>


# Introduction

{{Projectname}} is a



# Basic Usage

````bash

````

# Contact

[Feel free to create a issue for anything](https://github.com/{{GithubUsername}}/{{GithubReponame}}/issues/new)

# License
{{ if eq License "MIT" }}
{{Projectname}} is released under the [MIT license](LICENSE)
{{ else }}
See [LICENSE](LICENSE)
{{ end }}


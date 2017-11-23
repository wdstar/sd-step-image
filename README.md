sd-step Docker image
====================

## Contents

This image is alpine + sd-step + hab.

## Local build

```
$ git clone git@github.com:wdstar/sd-step-image.git
$ cd sd-step-image
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec this-image sh
/ # sd-step exec core/git 'git --version'
git version 2.14.2
/ # exit
$ docker-compose down
```

## License and Authors

- Author:: wdstar at github.com

```text
Copyright 2017, wdstar

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

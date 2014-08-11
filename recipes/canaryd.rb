#
# Cookbook Name:: canary
# Recipe:: canaryd
#
# Copyright (C) 2014 Jeremy Olliver
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'build-essential'
include_recipe 'golang::default'

execute 'install-and-compile-canaryd' do
  command ". /etc/profile.d/golang.sh && " + \
          "go get github.com/canaryio/canaryd && " + \
          "go get github.com/tools/godep && " + \
          "cd $GOPATH/src/github.com/canaryio/canaryd && " + \
          "godep get && " + \
          "godep go build"
  creates '/opt/go/bin/canaryd'
end

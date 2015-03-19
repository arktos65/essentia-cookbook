#
# Cookbook Name:: essentia
# Attributes:: default
#
# Copyright 2015, Pulselocker, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Installation attributes
default['essentia']['git']['url'] = 'https://github.com/MTG/essentia.git'
default['essentia']['git']['revision'] = 'v2.0.1'

# Installation target attributes
default['essentia']['target_directory'] = '/usr/local/bin'
default['essentia']['target_owner'] = 'root'
default['essentia']['target_group'] = 'root'
default['essentia']['target_mode'] = '0755'

# Other installation controls
default['essentia']['include_python_bindings'] = true


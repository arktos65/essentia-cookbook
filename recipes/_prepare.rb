#
# Cookbook Name:: essentia
# Recipe:: _prepare
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

# Prepare the system with all the prerequisite software components and libraries
include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'python'

# Include other required libraries
package ['libyaml-dev', 'libfftw3-dev', 'libavcodec-dev', 'libavformat-dev', 'libsamplerate0-dev', 'libtag1-dev'] do
  action :install
end

# If python bindings are allowed then...
if node['essentia']['include_python_bindings'] == true
  include_recipe 'essentia::_python'
end

# Install other Python libraries for build documentation
python_pip 'sphinx' do
  action :install
end
python_pip 'pyparsing' do
  action :install
end
python_pip 'sphinxcontrib-doxylink' do
  action :install
end
python_pip 'docutils' do
  action :install
end
python_pip 'pyyaml' do
  action :install
end


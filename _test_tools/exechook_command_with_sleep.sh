#!/bin/sh
#
# Copyright 2020 The Kubernetes Authors.
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

# Use for e2e test of --exechook-command.
# This option takes no command arguments, so requires a wrapper script.

sleep 3
cat file > exechook
cat exechook
if [[ "$(pwd)" != "$(pwd -P)" ]]; then echo "true" > delaycheck; fi
echo "ENVKEY=$ENVKEY" > exechook-env

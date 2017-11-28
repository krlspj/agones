#!/usr/bin/env bash

# Copyright 2017 Google Inc. All Rights Reserved.
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

rsync -r /go/src/github.com/agonio/agon/vendor/k8s.io/ /go/src/k8s.io/
/go/src/k8s.io/code-generator/generate-groups.sh "all" \
    github.com/agonio/agon/pkg/client \
    github.com/agonio/agon/pkg/apis stable:v1alpha1 \
    --go-header-file=/go/src/github.com/agonio/agon/build/crd.boilerplate.go.txt

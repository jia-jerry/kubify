# Copyright (c) 2017 SAP SE or an SAP affiliate company. All rights reserved. This file is licensed under the Apache Software License, v. 2 except as noted otherwise in the LICENSE file
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

###############################################################
# versions
###############################################################

variable "image_name" {
  default = ""
}

variable "bastion_image_name" {
  default = ""
}

variable "kubernetes_version" {
  default = ""
}

variable "dns_version" {
  default = ""
}

variable "flannel_version" {
  default = ""
}

variable "cni_version" {
  default = ""
}

variable "etcd_version" {
  default = ""
}

variable "etcd_operator_version" {
  default = ""
}

variable "bootkube_version" {
  default = ""
}

variable "kubernetes_hyperkube" {
  default = ""
}

variable "bootkube" {
  default = ""
}

variable "kubernetes_hyperkube_patch" {
  default = ""
}

variable "nginx_version" {
  default = ""
}

variable "lego_version" {
  default = ""
}

variable "dex_version" {
  default = ""
}

variable "garden_apiserver_image" {
  default = ""
}

variable "garden_apiserver_version" {
  default = ""
}

variable "garden_controller_image" {
  default = ""
}

variable "garden_controller_version" {
  default = ""
}

variable "external_dns_image" {
  default = ""
}

variable "external_dns_version" {
  default = ""
}

variable "machine_controller_image" {
  default = ""
}

variable "machine_controller_version" {
  default = ""
}

variable "tiller_image" {
  default = ""
}

variable "tiller_version" {
  default = ""
}

variable "helm_image" {
  default = ""
}

variable "helm_version" {
  default = ""
}

variable "dashboard_image" {
  default = ""
}

variable "dashboard_version" {
  default = ""
}

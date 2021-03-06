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

module "bastion_config" {
  source = "../../../../modules/access/node_config"
  node_config = "${var.bastion}"
}


module "bastion" {
  source = "../vms"

  iaas_config       = "${var.iaas_config}"
  iaas_info         = "${module.iaas_info.value}"
  prefix            = "${var.prefix}"

  cluster_name      = "${var.cluster_name}"
  cluster_type      = "${var.cluster_type}"
  node_type         = "bastion"
  node_count        = "${var.use_bastion ? 1 : 0}"

  image_name        = "${module.bastion_config.image_name}"
  flavor_name       = "${module.bastion_config.flavor_name}"

  key               = "${aws_key_pair.ssh_key.key_name}"

  subnet_id         = "${aws_subnet.public.id}"
  security_group    = "${aws_security_group.cluster.id}"

  provide_fips      = true
}

output "bastion_id" {
  value = "${element(concat(module.bastion.ids,list("")),0)}"
}

output "bastion_ip" {
  value = "${element(concat(module.bastion.ips,list("")),0)}"
}

output "bastion" {
  value = "${element(concat(module.bastion.fips,list("")),0)}"
}


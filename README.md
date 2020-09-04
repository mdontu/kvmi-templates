# KVMI Packer Templates

This repository contains the Packer templates for creating the host and guest images that can then be used to experiment with [KVMI](https://github.com/KVM-VMI/kvm) and [HVMI](https://github.com/hvmi/hvmi).

**NOTES**

 * The host image is meant to be used in a nested virtualization setup, like KVM on KVM.
 * The `kvmi-guest` template creates the image dedicated to running the VMI application. In the HVMI design, the application integrating the introspection engine runs isolated in its own VM. See the [HVMI Overview](https://hvmi.readthedocs.io/en/latest/chapters/1-overview.html) for more information.

## Host Template

Coming soon.

## Guest Template

It is based on Ubuntu 20.04 with the following specifications:

 * 32GiB disk
 * Linux kernel + KVMI patches (see [this](https://github.com/KVM-VMI/kvm/) and [this](https://lore.kernel.org/kvm/20200721210922.7646-1-alazar@bitdefender.com/))
 * [libkvmi](https://github.com/bitdefender/libkvmi) installed
 * [libbdvmi](https://github.com/bitdefender/libbdvmi) installed
 * [hvmi](https://github.com/hvmi/hvmi) installed

It essentially follows the steps described in [this blog post](https://hvmi.github.io/blog/2020/08/10/getting-started-on-kvm.html).

**NOTES**

 * The templates have been created using Packer 1.6.2 and Ansible 2.9.6 on Ubuntu 20.04
 * The build process can take well over an hour and produces a qcow2 disk image of ~7GiB

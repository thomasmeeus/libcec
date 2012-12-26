Description
-----------
Chef recipe to install PulseEight LibCEC from GIT.

Recipes
=======
default
-------
This recipe installs LibCec from the master branch on GIT

Attributes
----------

    default['libcec']['location'] = "/opt"
    default['libcec']['prefix'] = "/usr/local"
    default['libcec']['default_configure_flags'] = [
      " --prefix=#{node['libcec']['prefix']}"
    ]
    default['libcec']['force_recompile'] = true

Requirements
------------

Dependencies: 

* apt

* git 

Supports:

* Ubuntu 12.10
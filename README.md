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

* ```default['libcec']['location'] = "/opt"``` - The location where git clones the repository
* ```default['libcec']['prefix'] = "/usr/local"``` - Prefix for the binary

    default['libcec']['default_configure_flags'] = [
        " --prefix=#{node['libcec']['prefix']}"
    ]

Compile flags for ```./configure```

* ```default['libcec']['force_recompile'] = true``` - Configure to compile libCEC on every run or not

Requirements
------------

Dependencies: 

* apt: https://github.com/opscode-cookbooks/apt

* git: https://github.com/opscode-cookbooks/git

Supports:

* Ubuntu 12.10
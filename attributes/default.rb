default['libcec']['location'] = "/opt"
default['libcec']['prefix'] = "/usr/local"

default['libcec']['default_configure_flags'] = [
   " --prefix=#{node['libcec']['prefix']}"
]

default['libcec']['force_recompile'] = true

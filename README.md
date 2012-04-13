# Description #

Installs and configures memcached.

# Requirements #

## Platforms ##

* Ubuntu 11.10 (Oneiric)

## Cookbooks ##

* logrotate

# Attributes #

* `node["memcached"]["port"]` - Port to run memcached on.
* `node["memcached"]["listen"]` - IP for the daemon to bind to.
* `node["memcached"]["log_file"]` - Path to the memcached log file.
* `node["memcached"]["max_memory"]` - Maximum amount of memory to consume in
  megabytes.
* `node["memcached"]["max_connections"]` - Maximum number of ports to consume.

# Recipes #

* `recipe[memcached]` will install memcached.

# Usage #

Currently only supports one instance of memcached per node.

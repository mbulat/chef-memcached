maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures memcached."
version           "0.0.1"
recipe            "memcached", "Installs and configures memcached"

%w{ ubuntu }.each do |os|
    supports os
end

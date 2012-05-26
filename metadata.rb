maintainer        "Hector Castro"
maintainer_email  "hectcastro@gmail.com"
license           "Apache 2.0"
description       "Installs and configures memcached."
version           "0.0.4"
recipe            "memcached", "Installs and configures memcached"

depends "logrotate"

%w{ ubuntu }.each do |os|
    supports os
end

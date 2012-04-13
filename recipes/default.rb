include_recipe "logrotate"

package "memcached" do
  action :install
end

template "/etc/memcached.conf" do
  mode "0644"
  source "memcached.conf.erb"
  variables(
    :listen           => node["memcached"]["listen"],
    :port             => node["memcached"]["port"],
    :max_memory       => node["memcached"]["max_memory"],
    :max_connections  => node["memcached"]["max_connections"],
    :log_file         => node["memcached"]["log_file"]
  )
  notifies :restart, "service[memcached]", :immediately
end

logrotate_app "memcached" do
  cookbook "logrotate"
  path node["memcached"]["log_file"]
  frequency "daily"
  rotate 7
  create "644 root root"
end

service "memcached"

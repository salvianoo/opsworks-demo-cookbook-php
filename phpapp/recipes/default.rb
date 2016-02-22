execute "update" do
  command "sudo apt-get update"
end

apt_package "apache2" do
  action :install
end

service "apache2" do
  action [ :enable, :start ]
end

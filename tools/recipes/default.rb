bash "yum groupinstall Development tools" do
    user "root"
    group "root"
    code <<-EOC
      yum groupinstall "Development tools" -y
    EOC
end
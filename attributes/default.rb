case node['platform_family']
when 'debian'
  default['canary']['libcurl_packages'] = %w(libcurl3 libcurl4-openssl-dev)
when 'rhel'
  default['canary']['libcurl_packages'] = %w(curl-devel)
end

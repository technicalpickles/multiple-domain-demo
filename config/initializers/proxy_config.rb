Proxy.replace_host_with do |request|
  if request.host !~ /(\.|^)blogulator.com$/i
    "#{User.find_by_domain(request.host).try(:subdomain) || '-INVALID-'}.blogulator.com" 
  end
end

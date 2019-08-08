class apache_ext::mod::proxy_wstunnel {
  Class['::apache::mod::proxy'] -> Class['::apache_ext::mod::proxy_wstunnel']
  ::apache::mod { 'proxy_wstunnel': }
}

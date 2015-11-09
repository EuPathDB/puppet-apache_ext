# Install php extensions, e.g. php-ldap or php-xml
define apache_ext::php::ext (
  $ensure = 'present',
) {

  package { "php-${name}":
    ensure  => $ensure,
    require => Package['httpd'],
    notify  => Class['apache::service'],
  }
}

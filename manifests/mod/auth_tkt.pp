# manage mod_auth_tkt
class apache_ext::mod::auth_tkt (
  $secret = undef,
  $conf = '02_auth_tkt.conf',
) {
  apache::mod { 'auth_tkt':
    package => 'mod_auth_tkt',
  }

  file { '02_auth_tkt.conf':
    ensure  => file,
    path    => "${::apache::confd_dir}/${conf}",
    content => template('apache_ext/mod/auth_tkt.conf.erb'),
    mode    => '0640',
    owner   => 'root',
    group   => $::apache::params::group,
    require => Exec["mkdir ${::apache::confd_dir}"],
    before  => File[$::apache::confd_dir],
    notify  => Class['apache::service'],
  }
}

# manage mod_jk
class apache_ext::mod::jk (
  $jkworkersfile = '/etc/httpd/conf/workers.properties',
  $jklogfile     = '/var/log/httpd/mod_jk.log',
  $jkshmfile     = '/etc/httpd/logs/jk-runtime-status',
  $jkloglevel    = 'warning',
) {
  apache::mod { 'jk':
    package => 'mod_jk',
  }

  file { 'jk.conf':
    ensure  => file,
    path    => "${::apache::mod_dir}/jk.conf",
    content => template('apache_ext/mod/jk.conf.erb'),
    require => Exec["mkdir ${::apache::mod_dir}"],
    before  => File[$::apache::mod_dir],
    notify  => Class['apache::service'],
  }
}

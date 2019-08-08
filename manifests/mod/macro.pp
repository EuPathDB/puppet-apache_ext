# manage mod_macro for puppetlabs-apache 1.x
# This will be managed by puppetlabs-apache 2.x
class apache_ext::mod::macro (
) {
  ::apache::mod { 'macro': }
}

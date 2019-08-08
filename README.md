# apache_ext

## Overview

This module augments the [Puppetlab's `apache`
module](https://forge.puppetlabs.com/puppetlabs/apache) by providing
additional classes for managing the server.

## Setup

### Setup Requirements

This module depends on the [Puppetlab's `apache`
module](https://forge.puppetlabs.com/puppetlabs/apache).

## Usage

    include '::apache'
    include '::apache_ext::mod::jk'


## Reference

### `apache_ext::mod::auth_tkt`

Mangage the [`auth_tkt`](https://github.com/gavincarr/mod_auth_tkt) module.

**Parameters within `apache_ext::mod::auth_tkt`**:

#### `secret`

TKTAuthSecret shared secret. Should be set via `apache_ext::mod::auth_tkt::secret`
in Hiera.

### `apache_ext::mod::jk`

### `apache_ext::mod::line_edit`


### `apache_ext::php::ldap`

Install the `php-ldap` library. This will also install the
`::apache::mod::php` class as a dependency.

### `httpd_vhosts` Custom Fact

Returns Apache HTTPD Server name-based virtual hosts and aliases as
reported by the command 'httpd -S'.

    {
      default => {
        port => "80",
        conf_file => "/etc/httpd/conf.d/15-default.conf",
        aliases => []
      },
      sa.vm.apidb.org => {
        port => "80",
        conf_file => "/etc/httpd/conf/enabled_sites/sa.vm.apidb.org.conf",
        aliases => [
          "sa.vm.toxodb.org",
          "www.vm.toxodb.org"
        ]
      }
    }


## Limitations

only tested with the RedHat family


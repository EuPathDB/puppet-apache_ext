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
    include '::ebrc_httpd_setup::mod::jk'


## Reference

### `ebrc_httpd_setup::mod::auth_tkt`

Mangage the [`auth_tkt`](https://github.com/gavincarr/mod_auth_tkt) module.

**Parameters within `ebrc_httpd_setup::mod::auth_tkt`**:

#### `secret`

TKTAuthSecret shared secret. Should be set via `apache_ext::mod::auth_tkt::secret`
in Hiera.

### `ebrc_httpd_setup::mod::jk`

### `ebrc_httpd_setup::mod::line_edit`


### `apache_ext::php::ldap`

Install the `php-ldap` library. This will also install the
`::apache::mod::php` class as a dependency.

## Limitations

only tested with the RedHat family


# manage mod_line_edit
class apache_ext::mod::line_edit (
) {
  apache::mod { 'line_edit':
    package => 'mod_line_edit',
  }
}

# Puppet manifest to configure global SSH client settings:
# Sets IdentityFile to ~/.ssh/school and disables password authentication in /etc/ssh/ssh_config

file_line { 'Set Host wildcard':
  path  => '/etc/ssh/ssh_config',
  line  => 'Host *',
  match => '^Host \*',
}

file_line { 'Set IdentityFile':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile',
}

file_line { 'Disable PasswordAuthentication':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication',
}

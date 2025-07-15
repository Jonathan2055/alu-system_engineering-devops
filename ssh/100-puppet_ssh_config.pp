.fest to configure SSH client

file { '/root/.ssh/config':
  ensure  => file,
  mode    => '0600',
  owner   => 'root',
  group   => 'root',
}

file_line { 'Declare identity file':
  path  => '/root/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\\s*IdentityFile',
}

file_line { 'Turn off passwd auth':
  path  => '/root/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^\\s*PasswordAuthentication',
}

file_line { 'Set host wildcard':
  path  => '/root/.ssh/config',
  line  => 'Host *',
  match => '^Host \*',
}.

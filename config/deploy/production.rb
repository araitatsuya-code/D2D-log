server '13.115.204.157', user: 'ec2-user', roles: %w{app db web}
set :ssh_options, {port: 62235}
# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

server "172.104.170.135", user: "vinova", roles: %w{app db web}
set :deploy_to, "/home/vinova/proj-unfuddle-bot"

set :deploy_via, :remote_cache
set :branch, "staging"

server "172.104.170.135",
  user: "vinova",
  roles: %w{web app db},
  primary: true
  
set :ssh_options, {
  forward_agent: true,
	auth_methods: %w(publickey),
	user: 'vinova',
}
set :conditionally_migrate, true

set :linked_files, fetch(:linked_files, []).push('.env.staging')
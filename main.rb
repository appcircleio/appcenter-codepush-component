# frozen_string_literal: true

require 'os'
require 'pathname'
require 'fileutils'

def get_env_variable(key)
  ENV[key].nil? || ENV[key] == '' ? nil : ENV[key]
end

def env_has_key(key)
  !ENV[key].nil? && ENV[key] != '' ? ENV[key] : abort("Missing #{key}.")
end

def run_command(cmd)
  puts "@@[command] #{cmd}"
  output = `#{cmd}`
  raise "Command failed. Check logs for details \n\n #{output}" unless $CHILD_STATUS.success?

  output
end

def project_dir
  repository_path = env_has_key('AC_REPOSITORY_DIR')
  project_path = get_env_variable('AC_PROJECT_PATH') || '.'
  project_path = File.expand_path(project_path, repository_path)
  project_path.to_s
end

if `which appcenter`.empty?
  puts 'Installing Appcenter CLI'
  cli_version = get_env_variable('AC_APPCENTER_VERSION')
  cli_version = cli_version.nil? ? '' : "@#{cli_version}"
  run_command("npm install -g appcenter-cli#{cli_version}")
end

token = env_has_key('AC_APPCENTER_TOKEN')
app_name = env_has_key('AC_APPCENTER_APPNAME')
owner = env_has_key('AC_APPCENTER_OWNER')
app = "#{owner}/#{app_name}"

private_key = get_env_variable('AC_APPCENTER_PRIVATE_KEY')
description = get_env_variable('AC_APPCENTER_DESCRIPTION')
deployment = get_env_variable('AC_APPCENTER_DEPLOYMENT')
rollout = get_env_variable('AC_APPCENTER_ROLLOUT')
extra = get_env_variable('AC_APPCENTER_EXTRA')

cmd = "appcenter codepush release-react --token #{token} --app #{app}"
cmd += " --description \"#{description}\"" if description
cmd += " --deployment-name #{deployment}" if deployment
cmd += " --rollout #{rollout}" if rollout
cmd += " -k \"#{private_key}\"" if private_key
cmd += " #{extra}" if extra

Dir.chdir(project_dir) do
  run_command(cmd)
end

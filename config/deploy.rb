require "rvm/capistrano"
require "bundler/capistrano"
require 'capistrano/ext/multistage'

set :application, 'XML Parsing'
set :scm, :git
set :repository, "git@github.com:shubham-kedia/xmltask.git"
set :user, "root"
set :scm_passphrase, ""
set :branch, "master"
set :deploy_via, :copy
set :stages, ["staging", "development", "production"]
set :default_stage, "development"
default_run_options[:pty] = true
ssh_options[:forward_agent] = true

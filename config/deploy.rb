# config valid for current version and patch releases of Capistrano
# require 'capistrano/ext/multistage'


lock "~> 3.11.0"
set :application, "Michael"

set :repo_url, "git@github.com:msinoplis/Try_Deploy.git"

set :scm, :git
set :repository, "/Users/tech-a47/Engineering/Week8/d3-AWS/LAB/Michael/.git/"
set :scm_passphrase, ""

server "ec2-34-244-137-125.eu-west-1.compute.amazonaws.com", :app, :web, :db, :primary => true
set :deploy_to, "/home/ubuntu/"

set :user, "ubuntu"

set :stages, ["staging", "production"]
set :default_stage, "staging"

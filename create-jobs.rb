#!/usr/bin/env ruby

require "erb"

if ENV["JENKINS_HOME"].nil?
  puts "No JENKINS_HOME set."
  exit 1
end

templates_dir = ARGV[0]

templates = Dir.glob(File.join(templates_dir, "*", "definition.rb")) 

config_template = ERB.new(File.read(File.join(File.dirname(__FILE__), "config.xml.erb")))
templates.each do |path|
  # path == templates/TEMPLATE_NAME/definition.rb
  template_name = File.basename(File.dirname(path))

  job = "veewee-#{template_name}"

  jobdir = File.join(ENV["JENKINS_HOME"], "jobs", job)
  puts "Writing #{jobdir}/config.xml"
  Dir.mkdir(jobdir) if !Dir.exists?(jobdir)
  File.write(File.join(jobdir, "config.xml"), config_template.result(binding))
end

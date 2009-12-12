module Repl
  Version = '0.1.0'
end

def version
  Repl::Version
end

def git(command)
  system("git #{command}")
end


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "repl"
    gemspec.summary = gemspec.description = "repl tenderly wraps another program"
    gemspec.homepage = "http://github.com/defunkt/repl"
    gemspec.version = version
    gemspec.authors = ["Chris Wanstrath"]
    gemspec.email = "chris@ozmm.org"
  end
rescue LoadError
  puts "Jeweler not available."
  puts "Install it with: gem install jeweler"
end

desc "Build manual"
task :build_man do
  sh "ron -br5 --organization=DEFUNKT man/*.ron"
end

desc "Build and show manual"
task :man => :build_man do
  exec "man man/repl.1"
end

desc "Push a new version to Gemcutter"
task :publish => [ :gemspec, :build ] do
  git "tag v#{version}"
  git "push origin v#{version}"
  git "push origin master"
  git "push origin master:latest"
  system "gem push pkg/repl-#{version}.gem"
  git "clean -fd"
  exec "rake pages"
end

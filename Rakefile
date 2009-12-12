module Repl
  Version = '0.1.0'
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "repl"
    gemspec.summary = gemspec.description = "repl tenderly wraps another program"
    gemspec.homepage = "http://github.com/defunkt/repl"
    gemspec.version = Repl::Version
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

$LOAD_PATH.unshift 'lib'
require "repl/version"

def version
  Repl::VERSION
end

def git(command)
  system("git #{command}")
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
task :publish do
  git "tag v#{version}"
  git "push origin v#{version}"
  git "push origin master"
  git "push origin master:latest"
  sh "gem build repl.gemspec"
  sh "gem push repl-#{version}.gem"
  git "clean -fd"
  exec "rake pages"
end

desc "Publish to GitHub Pages"
task :pages => [ :build_man ] do
  cp "man/repl.1.html", "html"
  git "checkout gh-pages"
  mv "html", "index.html"
  git "commit -a -m 'update docs'"
  git "push origin gh-pages"
  git "checkout master"
  puts :done
end

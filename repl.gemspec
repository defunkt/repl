$LOAD_PATH.unshift 'lib'
require "repl/version"

Gem::Specification.new do |s|
  s.name              = "repl"
  s.version           = Repl::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "sometimes you need a repl"
  s.homepage          = "http://github.com/defunkt/repl"
  s.email             = "chris@ozmm.org"
  s.authors           = [ "Chris Wanstrath" ]
  s.has_rdoc          = false

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")

  s.executables       = %w( repl )
  s.description       = <<desc
repl is an interactive program which tenderly wraps another,
non-interactive program, providing you with a repl shell.
desc
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "uri/sftp/version"

Gem::Specification.new do |s|
  s.name        = "uri-ftps"
  s.version     = URI::FTPS::VERSION
  s.authors     = ["Nathan BUSH"]
  s.email       = ["nathan@newshubmedia.com"]
  s.homepage    = "https://github.com/nathan-nhm/ruby-uri-ftpS"
  s.summary     = %q{FTPS URI class}
  s.description = %q{FTPS URI class}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.required_ruby_version = ">= 1.9.3"
end

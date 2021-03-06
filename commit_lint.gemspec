# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'commit_lint/version'

Gem::Specification.new do |spec|
  spec.name          = 'commit_lint'
  spec.version       = CommitLint::VERSION
  spec.authors       = ['Adham EL-Deeb']
  spec.email         = ['adham.eldeeb90@gmail.com']

  spec.summary       = 'Customizable git commit linter'
  spec.description   = 'Customizable git commit linter that allows you set your custom rols and force guidelines.'
  spec.homepage      = 'https://github.com/adham90/commit-lint'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_dependency 'highline'
end

Gem::Specification.new do |s|
  s.name = %q{mapr}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FIXME full name"]
  s.cert_chain = ["/Users/nofxx/.gem/gem-public_cert.pem"]
  s.date = %q{2008-09-13}
  s.description = %q{description of gem}
  s.email = ["FIXME email"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/mapr", "config/hoe.rb", "config/requirements.rb", "lib/mapr.rb", "lib/mapr/bin.rb", "lib/mapr/download.rb", "lib/mapr/export.rb", "lib/mapr/map.rb", "lib/mapr/version.rb", "mapr.gemspec", "script/console", "script/destroy", "script/generate", "script/txt2html", "setup.rb", "spec/mapr/export_spec.rb", "spec/mapr/map_spec.rb", "spec/mapr_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://mapr.rubyforge.org}
  s.post_install_message = %q{}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mapr}
  s.rubygems_version = %q{1.2.0}
  s.signing_key = %q{/Users/nofxx/.gem/gem-private_key.pem}
  s.summary = %q{description of gem}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end

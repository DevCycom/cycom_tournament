# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sqlite3-ruby}
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jamis Buck", "Luis Lavena", "Aaron Patterson"]
  s.date = %q{2010-06-06}
  s.description = %q{This module allows Ruby programs to interface with the SQLite3
database engine (http://www.sqlite.org).  You must have the
SQLite engine installed in order to build this module.

Note that this module is NOT compatible with SQLite 2.x.}
  s.email = ["jamis@37signals.com", "luislavena@gmail.com", "aaron@tenderlovemaking.com"]
  s.extensions = ["ext/sqlite3/extconf.rb"]
  s.extra_rdoc_files = ["Manifest.txt", "API_CHANGES.rdoc", "README.rdoc", "CHANGELOG.rdoc", "ext/sqlite3/database.c", "ext/sqlite3/statement.c", "ext/sqlite3/sqlite3.c", "ext/sqlite3/exception.c"]
  s.files = ["API_CHANGES.rdoc", "CHANGELOG.rdoc", "ChangeLog.cvs", "LICENSE", "Manifest.txt", "README.rdoc", "Rakefile", "ext/sqlite3/database.c", "ext/sqlite3/database.h", "ext/sqlite3/exception.c", "ext/sqlite3/exception.h", "ext/sqlite3/extconf.rb", "ext/sqlite3/sqlite3.c", "ext/sqlite3/sqlite3_ruby.h", "ext/sqlite3/statement.c", "ext/sqlite3/statement.h", "faq/faq.rb", "faq/faq.yml", "lib/sqlite3.rb", "lib/sqlite3/constants.rb", "lib/sqlite3/database.rb", "lib/sqlite3/errors.rb", "lib/sqlite3/pragmas.rb", "lib/sqlite3/resultset.rb", "lib/sqlite3/statement.rb", "lib/sqlite3/translator.rb", "lib/sqlite3/value.rb", "lib/sqlite3/version.rb", "setup.rb", "tasks/faq.rake", "tasks/gem.rake", "tasks/native.rake", "tasks/vendor_sqlite3.rake", "test/helper.rb", "test/test_database.rb", "test/test_deprecated.rb", "test/test_encoding.rb", "test/test_integration.rb", "test/test_integration_open_close.rb", "test/test_integration_pending.rb", "test/test_integration_resultset.rb", "test/test_integration_statement.rb", "test/test_sqlite3.rb", "test/test_statement.rb"]
  s.homepage = %q{http://github.com/luislavena/sqlite3-ruby}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubyforge_project = %q{sqlite3-ruby}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{This module allows Ruby programs to interface with the SQLite3 database engine (http://www.sqlite.org)}
  s.test_files = ["test/test_sqlite3.rb", "test/test_integration_open_close.rb", "test/test_database.rb", "test/test_integration.rb", "test/test_statement.rb", "test/test_integration_pending.rb", "test/test_deprecated.rb", "test/test_integration_statement.rb", "test/test_encoding.rb", "test/test_integration_resultset.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.7.0"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.0"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.7.0"])
      s.add_dependency(%q<hoe>, [">= 2.6.0"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.7.0"])
    s.add_dependency(%q<hoe>, [">= 2.6.0"])
  end
end
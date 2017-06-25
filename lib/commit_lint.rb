require 'commit_lint/version'
require 'byebug'
require 'commit_lint/git'

module CommitLint
  class << self
    def git
      Git.new
    end

    def run
      git.lint_current_branche
    end
  end
end

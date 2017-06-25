module CommitLint
  class Git
    attr_accessor :current_branch, :last_commit, :branche_commits

    def initialize
      @current_branch  = current_branch
      @last_commit     = last_commit
      @branche_commits = current_branch_commits
    end

    def current_branch
      `git rev-parse --abbrev-ref HEAD`.chop
    end

    def current_branch_commits
      cmd = "git log #{current_branch}" \
        " --format=%H --not $(git for-each-ref --format='%(refname)'" \
        " refs/heads/ | grep -v 'refs/heads/#{current_branch}')"

      `#{cmd}`.split(/\n/)
    end

    def all_logs
      `git log --format=%H`
    end

    def lint_current_branche
      branche_commits.map do |b|
        `git show -s --format=%B #{b}`
      end
    end
  end
end

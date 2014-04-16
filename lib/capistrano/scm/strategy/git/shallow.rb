require 'capistrano/git'


# A shallow Git strategy for Capistrano.
# SEE: Capistrano::Git::DefaultStrategy
module Capistrano
  module Scm
    module Strategy
      module Git
        module Shallow
          
          def test
            test! " [ -f #{repo_path}/HEAD ] "
          end
          
          def check
            test! :git, :'ls-remote -h', repo_url
          end
          
          def clone
            # clone bare repo, but only latest commit of some branch
            git(
              :clone,
              '--bare',
              '--depth 1',
              "--branch #{fetch(:branch)}",
              repo_url,
              repo_path
            )
          end
          
          def update
            # update branch, checking out a new branch if :branch changed
            # --force is used to skip inheritance check when new commits
            git(
              :fetch,
              '--depth 1',
              '--force',
              'origin',
              "#{fetch(:branch)}:#{fetch(:branch)}"
            )
            
            # update HEAD to reflect correct branch for manual inspection
            # shouldn't strictly be needed as branch is explicit elsewhere
            git(:'symbolic-ref', 'HEAD', "refs/heads/#{fetch(:branch)}")
          end
          
          def release
            git :archive, fetch(:branch), '| tar -x -C', release_path
          end
          
          def fetch_revision
            context.capture(:git, "rev-parse #{fetch(:branch)}")
          end
          
        end
      end
    end
  end
end

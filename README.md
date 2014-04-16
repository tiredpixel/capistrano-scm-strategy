# Capistrano SCM Strategy

[![Gem Version](https://badge.fury.io/rb/capistrano-scm-strategy.png)](http://badge.fury.io/rb/capistrano-scm-strategy)
[![Code Climate](https://codeclimate.com/github/tiredpixel/capistrano-scm-strategy.png)](https://codeclimate.com/github/tiredpixel/capistrano-scm-strategy)

[Capistrano](http://capistranorb.com/) SCM strategies (sparse).

Capistrano SCM Strategy is a home for additional strategies utilising
Capistrano's pluggable strategy approach. Only Capistrano 3 is supported.
Currently, the only strategy is `Git::Sparse`. But why not blend your magic? :)

More sleep lost by [tiredpixel](http://www.tiredpixel.com).


## Installation

Install using:

    gem 'capistrano-scm-strategy', '~> 0.1'

The default Ruby version supported is defined in `.ruby-version`.


## Usage

Require all strategies (they are namespaced so don't fret :) ):

    # Capfile
    
    require 'capistrano/scm/strategy'

Choose a strategy using Capistrano's pluggable nature:

    set :git_strategy, Capistrano::Scm::Strategy::Git::Sparse

The strategy option is named `:SCM_strategy`, where `SCM` is the SCM set or
defaulted by `:scm`. So, for Subversion, use `:svn_strategy`.

That's it!


## Strategies

These strategies are available:

- `Capistrano::Scm::Strategy::Git::Sparse` :
  A sparse Git strategy.


## Stay Tuned

We have a [Librelist](http://librelist.com) mailing list!
To subscribe, send an email to <capistrano.scm.strategy@librelist.com>.
To unsubscribe, send an email to <capistrano.scm.strategy-unsubscribe@librelist.com>.
There be [archives](http://librelist.com/browser/capistrano.scm.strategy/).
That was easy.

You can also become a [watcher](https://github.com/tiredpixel/capistrano-scm-strategy/watchers)
on GitHub. And don't forget you can become a [stargazer](https://github.com/tiredpixel/capistrano-scm-strategy/stargazers) if you are so minded. :D


## Growing Like Flowers

Dear Me, Here is a vague wishlist:

- `Capistrano::Scm::Strategy::Hg::Sparse` :
  A sparse Mercurial strategy.

- `Capistrano::Scm::Strategy::Svn::Sparse` :
  A sparse Subversion strategy.

Also take a look at the [issue tracker](https://github.com/tiredpixel/capistrano-scm-strategy/issues).


## Contributions

Contributions are embraced with much love and affection!
Please fork the repository and wizard your magic.
Then send me a pull request. Simples!
If you'd like to discuss what you're doing or planning to do, or if you get
stuck on something, then just wave. :)

Do whatever makes you happy. We'll probably still like you. :)


## Blessing

May you find peace, and help others to do likewise.


## Licence

© [tiredpixel](http://www.tiredpixel.com) 2014.
It is free software, released under the MIT License, and may be redistributed
under the terms specified in `LICENSE`.

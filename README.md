# Ladon

Ladon is a framework implemented in Ruby for modeling software, and automating software through the models we create.

## Installing

Once Ladon is open sourced, installing will be as simple as running a simple `gem install ladon` command.
Until then, you will have to clone this repo and build/install the gem manually.

This is simple to do:

1. Install Ruby if you don't have it (the dev1xx servers all have Ruby 2.3.1 on them.)
2. Clone this repository somewhere you have permission to do so
3. Change directories into the Ladon checkout you just cloned
4. To **build** the Ladon gem: `gem build ladon.gemspec` (this will create a file called `ladon-1.0.0.gem` in this directory.)
5. To **install** the Ladon gem: `gem install ladon-1.0.0.gem`

To confirm you've successfully installed Ladon:

1. start a Ruby interpreter: `irb`
2. In your `irb` session, run: `require 'ladon'`
3. You should see `irb` return `true` for that require commands, which means the require was successful
4. Type `Ladon::Version::STRING` and confirm that `"1.0.0"` is returned and printed to your terminal

If so, you have Ladon 1.0 RC installed! Congrats.

## Project Structure

- `README.md`: This file, you rascal, you. You knew that.
- `LICENSE.txt`: Will eventually hold the legitimate license Ladon will be open sourced under.
- `CHANGELOG`: Will eventually be used to specify changes per Ladon version.
- `CONTRIBUTING.md`: Will eventually specify the rules developers must follow to contribute to Ladon
- `lib/`: The Ladon framework source code.
- `spec/`: Tests for the Ladon framework; implemented in BDD style via RSpec
- `bin/`: Contains scripts that will be installed onto your path when you install the Ladon gem. Includes a utility for running Ladon automation scripts.


## Using

Ladon 1.0 is subdivided into two familiar components:

- Modeler: `lib/modeler.rb` and `lib/modeler/*`
- Automator: `lib/automator.rb` and `lib/automator/*`

### Modeler

Contains the framework for creating a graph-based representation of your software. 
Nodes are called "States" and edges are called "Transitions"; in other words, we're using finite state machine terminology.

This is extremely similar to the Beta. Some terminology has changed, and Transitions are now classes/objects, rather than specified through a function call.

The `Ladon::Core::PageObjectBase` class from the Beta should be represented as a subclass of Ladon 1.0's `State` class.

### Automator

Contains the framework for scripting software automation.
Ladon actually exposes two types of Automations: `Automation` and `ModelAutomation`.

While Ladon takes the philosophical stance that *all* automation should work through a model, it doesn't force you to do so.
The `Automation` class is the parent of `ModelAutomation`; the only difference is, `ModelAutomation`s are expected to use a model.

Use `ModelAutomation` unless you have a really good reason not to do so.

`ModelAutomation` is roughly the equivalent of `Ladon::Core::TestBase` from the beta, but with way more flexibility and potential.

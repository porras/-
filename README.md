# ✓

✓ (pronounced *checkmark* or *“U+2713”*) is three things:

UPDATE: This README states some things that are not true, that's how Readme Driven Development goes! I'll update it ASAP, thank you :)

* Yet another Ruby test library because, you know, the world needs more Ruby testing libraries
* An experiment to test how deep the usual Ruby stack (Ruby itself, Rubygems, Bundler) and the related ecosystem (file systems, shells, editors, version control systems) embrace Unicode
* A stupid thing you could but probably should not try at home. No ☃s were damaged while doing it though

## Usage

First, add it to your project, either the classic way:

    $ gem install ✓

Or, much better, if you use Bundler, add it to your `Gemfile`:

    gem '✓'

Then, create the directory to store your ✓ powered tests in it:

    $ mkdir ✓
    $ touch ✓/some_tests.✓

Test are written this way:

    require '✓'
    
    ✓ do
      ✓ { 1 + 1 == 2 }
      ✓ { 'wadus'.upcase == 'WADUS' }
    
      ✗ { "something".nil? }
    
      ☐ { something_not_implemented_still }
    end

And run in this not-very-surprising way:

    $ rake ✓
    
    [sample output]


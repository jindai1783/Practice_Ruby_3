# Practice Ruby 3

<div id="table-of-contents" />
## Table of Contents

1. [Introduction](#introduction)
2. [Try It](#try-it)
3. [Key Code](#key-code)
4. [Rules](#rules)
5. [Tips](#tips)

<div id="introduction" />
## Introduction

Here we're going to revisit the basics of Ruby. There are 41 questions, varying in level from quite easy to fairly hard. Work through them and check if they're correct by running the specs.

You should be able to answer most questions with a couple of lines of code, and just a few methods. If you're writing a long, complex solution, there's probably a better way.

<div id="try-it" />
## Try It

To run the specs, just run
```
$ rspec questions_spec.rb
```

**Quick tip**: to run a single example, change `it` to `fit` on that example, then run
```
$ rspec questions_spec.rb --tag focus
```

**[back to top](#table-of-contents)**

<div id="key-code" />
## Key Code

```ruby
The following two lines are equivalent:
array.inject(&:+)
# array.inject {|sum, n| sum + n}

Converting array to a hash:
Hash[*array]
```

<div id="rules" />
## Rules

* Try and get the RSpec tests to pass (but not by cheating - i.e. hardcoding the expected value)
* You shouldn't need any extra libraries or gems
* The cleaner your code the better!
* Googling is fine as usual

<div id="tips" />
## Tips

* Use the ruby docs http://www.ruby-doc.org/core-2.0.0/String.html
* Try and break down the problems into smaller chunks. For e.g. if you google "How to select elements in an array that start with a", you won't have much luck. Try and find out a) how to select certain elements in an array, b) how to test if a string starts with an 'a'
* Don't forget Enumerable (advanced array methods)
* Read the specs and the comments - if you're still confused, just ask.
* Don't panic :wink:

**[back to top](#table-of-contents)**

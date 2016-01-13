[![Build Status](https://travis-ci.org/escapestudios-cookbooks/supervisor.png)](https://travis-ci.org/escapestudios-cookbooks/supervisor)

# supervisor cookbook

## Description

This cookbook provides an easy way to install Supervisor, a process control system.

More information?
http://supervisord.org/index.html

## Requirements

### Cookbooks:

This cookbook doesn't have direct dependencies on other cookbooks.

### Platforms:

* Ubuntu
* Debian

## Attributes

* `node['hollandbackup']['programs']` - A list of programs

## Usage

1. include `recipe[supervisor]` in a run list
2. include `recipe[supervisor::programs]` to add programs
3. tweak the attributes via attributes/default.rb
--- OR ---  
override the attributes on a higher level (http://wiki.opscode.com/display/chef/Attributes#Attributes-AttributesPrecedence)

## References

* [Supervisor home page] (http://supervisord.org/index.html)

## License and Authors

Author: David Joos <david@escapestudios.com>
Author: Escape Studios Development <dev@escapestudios.com>
Copyright: 2012-2015, Escape Studios

Unless otherwise noted, all files are released under the MIT license,
possible exceptions will contain licensing information in them.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

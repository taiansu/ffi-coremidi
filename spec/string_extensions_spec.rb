#!/usr/bin/env ruby
#
# Contains the specifications for the extensions to Ruby's built-in String
# class.
#
# == Authors
#
# * Ben Bleything <bbleything@laika.com>
#
# == Copyright
#
# Copyright (c) 2008 LAIKA, Inc.
#
# This code released under the terms of the BSD license.
#
# == Version
#
#  $Id$
#

require File.join(File.dirname(__FILE__),"spec_helper.rb")

require 'string_extensions'

describe "MIDIator's extensions to Ruby's String class" do
	it "converts under_scored strings to CamelCase" do
		"this_is_some_strings".camelize.should == "ThisIsSomeStrings"
	end
	
	it "converts file path strings to module paths" do
		"some/file/lives/here".camelize.should == "Some::File::Lives::Here"
	end
	
	it "converts CamelCase strings to under_scored" do
		"TheseStringsBeCamelly".underscore.should == "these_strings_be_camelly"
	end
	
	it "converts module path strings to file paths" do
		"This::Is::A::Module".underscore.should == "this/is/a/module"
	end
end

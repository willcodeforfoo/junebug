#!/usr/bin/env ruby
$:.unshift File.dirname(__FILE__) + "/../lib"

require 'rubygems'
gem 'activesupport', '<=1.4.4'
require 'junebug/config'

JUNEBUG_ROOT = ENV['JUNEBUG_ROOT'] = File.dirname(File.expand_path(__FILE__))

require Junebug::Config.script

Junebug.connect
Junebug.create
run Junebug

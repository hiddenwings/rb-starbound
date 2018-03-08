# frozen_string_literal: true

require 'clamp'
require 'rbstarbound/exit_codes'
require 'rbstarbound/commands/dump'
require 'rbstarbound/commands/serialize'

module RBStarbound
  class MainCommand < Clamp::Command
    option '--version', :flag, 'show version' do
      puts RBStarbound::VERSION
      exit RBStarbound::EX_OK
    end

    subcommand 'dump',
               'dump a player save file as a formatted file',
               RBStarbound::DumpCommand
    subcommand 'serialize',
               'serialize a player save file form a formatted file',
               RBStarbound::SerializeCommand
  end
end

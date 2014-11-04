require 'fiddle'
require 'fiddle/import'
require 'pry'

module Librust
  extend Fiddle::Importer
  dlload './librust.so'
  extern 'Point* make_point(int, int)'
  extern 'int rust_func()'
end

module Libc
  extend Fiddle::Importer
  dlload './libc.so'
  extern 'int c_func()'
end


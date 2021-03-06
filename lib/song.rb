require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  include Paramable

  @@songs = []

  def initialize
    super
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end

# Taken from http://lists.vanruby.com/pipermail/discuss/2006-January/000050.html

class NonPersistentRecord < ActiveRecord::Base

  def self.columns() @columns ||= []; end

  def self.column(name, sql_type = nil, default = nil, null = true)
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s,
default, sql_type.to_s, null)
  end

  def initialize(attributes = nil)
    super
  end
end


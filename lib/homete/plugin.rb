module Danger
  # @see  Shinobu Okano/danger-homete
  # @tags homete
  #
  class DangerHomete < Plugin
    # A globbed string or array of strings which should match the files that you want to test.
    #
    # @param    [String or [String]] value
    # @return   [[String]]
    attr_accessor :test_files

    def test_files
      [@test_files].flatten.compact
    end

    # If you change the test code, you will be praised.
    #
    # @param    [String or [String]] 	praises
    # @return   [void]
    def homete(messages = ["えらい！"])
      test_files.each { |v| message [messages].flatten.compact.sample if git.modified_files.any? { |f| File.fnmatch(v, f) } }
    end
  end
end

class Dictionary

	attr_accessor :entries
	
	def initialize
		@entries = {}
	end

	def add entry
		if entry.is_a? String
			entry = {entry => nil}
		end
		@entries = @entries.merge!(entry)
	end

	def keywords
		@keywords = @entries.keys.sort
	end

	def include? entry
		@entries.include?(entry)
	end

	def find entry
		if @entries.empty?
			return {}
		else
			@entries.select {|k,v| k.include?(entry)}
		end
	end
end
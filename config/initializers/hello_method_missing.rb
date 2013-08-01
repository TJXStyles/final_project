class Hello
	# def method_missing(method_sym, *arguments, &block)
	def method_missing(method_sym, argument1)
		puts "hello #{method_sym}.\n#{argument1}"
	end
end

hello = Hello.new()

hello.rob("whatsup?")
hello.world("how's it going world?")
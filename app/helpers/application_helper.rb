module ApplicationHelper
	def date_loaded
		return Time.now 
	end
	
	def hidden_div_if(condition, attributes = {}, &block)
		if condition
			attributes["style"] = "display: none"
		end
		content_tag("div", attributes, &block)
	end
end

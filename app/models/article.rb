class Article < ApplicationRecord

	after_create :action_cable_broadcast

	def action_cable_broadcast
		ActionCable.server.broadcast "messages", {data: self}
	end
end

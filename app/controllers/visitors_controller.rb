class VisitorsController < ApplicationController
	def index
		@page = Page.first
	end
end

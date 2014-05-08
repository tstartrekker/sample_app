require 'spec_helper'

describe "Static Pages" do
	let (:main_title) {"Ruby on Rails Tutorial Sample App"}

	describe "Home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content ('Sample App')
		end

		it "should have the tilte 'Home'" do
			visit '/static_pages/home' 
			expect(page).to have_title ("#{main_title} | Home")
		end
	end

	describe "Help page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/help'
			expect(page).to have_content ('Help')
		end

		it "should have the tilte 'Help'" do
			visit '/static_pages/help' 
			expect(page).to have_title ("#{main_title} | Help")
		end
	end

	describe "Contact page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/contact'
			expect(page).to have_content ('Contact')
		end

		it "should have the title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title ("#{main_title} | Contact")
		end
	end

end
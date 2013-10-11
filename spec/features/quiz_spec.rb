require 'spec_helper'
require 'quizzes_controller'

# def create_quiz(some_title)
# 	Quiz.create({:title => some_title})
# end

describe 'the quizzes section' do
	
	before(:all) do
		create.quiz 'Some quiz'
	end

	describe '/quizzes' do
		it 'should display quizzes' do
			visit '/quizzes'

			expect(page).to have_content 'Some quiz'
		end
	end


describe 'creating new quiz' do
		it 'can also create a new question' do
			visit '/quizzes/new'

		fill_in 'Title', with: 'Quiz Title'
		fill_in 'Question', with: 'What is your name?'
		click_button 'Submit'

		expect(page).to have_content 'What is your name?'
		expect(Quiz.last.questions).not_to be_empty
	end
end

	
end
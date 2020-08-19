feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Testing infrastructure working!'
    end
 end

feature 'Entering player names' do
  scenario 'players can enter names and see names on screen'
    visit('/')
    fill_in('First Name' , with: 'Zish')
    click_button 'Send'
    expect(page).to have_content 'Zish'
  end
end


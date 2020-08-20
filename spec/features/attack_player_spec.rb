feature 'attack player' do

    scenario 'attack player 2 and get confirmation' do
        sign_in_and_play
        click_button('Attack')
        expect(page).to have_content 'Zish attacked Kibu!'
    end

    scenario 'reduce player 2 HP by 10' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content "Kibu's HP is now 90"
    end
 end
    
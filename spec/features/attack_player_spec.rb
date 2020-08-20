feature 'attack player' do

    scenario 'player 1 attacks player 2 and get confirmation' do
        sign_in_and_play
        click_button('Attack')
        expect(page).to have_content 'Zish attacked Kibu!'
    end

    scenario 'player 2 attacks player 1 and get confirmation' do '
        sign_in_and_play
        click_button('Attack')
        expect(page).to have_content 'Zish attacked Kibu!'
        click_button('Attack')
        expect(page).to have_content 'Kibu attacked Zish!'
    end

    scenario 'reduce player 2 HP by 10' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content "Kibu's HP is now 90"
    end
 end
    
feature 'view hit points' do
    scenario 'see player 2 hit points' do
        sign_in_and_play
        expect(page).to have_content 'Kibu: 100 hit points'
    end

    scenario 'see player 1 hit points' do
        sign_in_and_play
        expect(page).to have_content 'Zish: 100 hit points'
    end
end
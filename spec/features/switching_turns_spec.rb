feature 'switch turns' do
    
    context 'Seeing current turn' do
        scenario 'at the start of the game' do
            sign_in_and_play
            expect(page).to have_content "Zish's turn"
        end
    
        scenario 'after play 1 attacks' do
            sign_in_and_play
            click_button 'Attack'
            expect(page).not_to have_content "Zish's turn"
            expect(page).to have_content "Kibu's turn"
        end
    end
end


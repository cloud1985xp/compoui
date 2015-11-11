describe Compoui::Menu do
  describe '#initializer' do
    Given(:menu){ Compoui::Menu.new }
    Then { expect(menu.to_s).to eq "<a href='/path'>name</a>" }
  end

  describe '#append' do
    context 'append button' do
      When { menu.append('name', '/path') }
    end

    context 'append submenu' do
      Gven(:submenu){ Compoui::Menu.new }
      When { menu.append(submenu)}
    end
  end
end
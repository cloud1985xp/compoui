describe Compoui::Nav do
  describe '#initialize' do
    context 'with array of pages' do
      Given(:pages) {
        [
          ['name1', 'path1']
        ]
      }
      When(:nav){ Compoui::Nav.new() }
    end
  end

  describe '.load' do
  end

  describe '.parse' do
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

  describe '#render' do
    When(:html){ nav.render}
    Then{ expect(html).to eq("<ul class='nav'>
      </ul>")
    }
  end
end
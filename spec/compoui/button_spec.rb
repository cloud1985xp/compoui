describe Compoui::Button do
  Given(:button){ Compoui::Button.new('name', '/path') }
  Then { expect(button.to_s).to eq "<a href='/path'>name</a>" }
end
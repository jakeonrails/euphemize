require 'spec_helper'

describe "phrases/index.html.haml" do
  before(:each) do
    assign(:phrases, [
      stub_model(Phrase,
        :belongs_to => "",
        :phrase => "Phrase"
      ),
      stub_model(Phrase,
        :belongs_to => "",
        :phrase => "Phrase"
      )
    ])
  end

  it "renders a list of phrases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phrase".to_s, :count => 2
  end
end

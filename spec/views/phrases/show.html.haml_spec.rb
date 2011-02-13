require 'spec_helper'

describe "phrases/show.html.haml" do
  before(:each) do
    @phrase = assign(:phrase, stub_model(Phrase,
      :belongs_to => "",
      :phrase => "Phrase"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phrase/)
  end
end

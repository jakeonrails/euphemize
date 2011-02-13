require 'spec_helper'

describe "phrases/edit.html.haml" do
  before(:each) do
    @phrase = assign(:phrase, stub_model(Phrase,
      :belongs_to => "",
      :phrase => "MyString"
    ))
  end

  it "renders the edit phrase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phrases_path(@phrase), :method => "post" do
      assert_select "input#phrase_belongs_to", :name => "phrase[belongs_to]"
      assert_select "input#phrase_phrase", :name => "phrase[phrase]"
    end
  end
end

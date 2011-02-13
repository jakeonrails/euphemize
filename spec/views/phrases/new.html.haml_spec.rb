require 'spec_helper'

describe "phrases/new.html.haml" do
  before(:each) do
    assign(:phrase, stub_model(Phrase,
      :belongs_to => "",
      :phrase => "MyString"
    ).as_new_record)
  end

  it "renders new phrase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phrases_path, :method => "post" do
      assert_select "input#phrase_belongs_to", :name => "phrase[belongs_to]"
      assert_select "input#phrase_phrase", :name => "phrase[phrase]"
    end
  end
end

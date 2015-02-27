require_relative '../lib/response'
describe Response do
  let(:r) {Response.new}
  it "has no empty or rude answers" do
    Response::KnownQuestions::ALL.each {|q|
      answer = r.ask(q)
      expect(answer).to_not be_empty
      expect(answer).to_not include "fuck off"
    }
  end

  it "default reply" do
    expect(r.ask("unknown question")).to eq "I didn't think of that yet."
  end
end

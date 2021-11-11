RSpec.describe Turnip::DocumentationFormatter do
  let(:result) { `rspec -fd examples/documentation_formatter.feature` }

  it "prints each step on it's own line" do
    expect(result).to match /Given there is a monster\n\s*When I attack it\n\s*Then it should die/
  end

  it 'prints remaining steps after failure' do
    expect(result).to match /And raise error \(FAILED.*\n\s*Then it should die/
  end

  it 'prints remaining steps after pending' do
    expect(result).to match /And do something unexpected \(PENDING.*\n\s*Then it should die/
  end
end

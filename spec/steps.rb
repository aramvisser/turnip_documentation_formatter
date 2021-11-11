step "there is a monster" do
  @monster = 1
end

step "I attack it" do
  @monster -= 1
end

step "it should die" do
  expect(@monster).to eq 0
end

step "raise error" do
  raise "foobar"
end

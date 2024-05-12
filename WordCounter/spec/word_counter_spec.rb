require_relative '../word_counter'

RSpec.describe 'word_count' do
  it 'counts the occurrences of each unique word in a paragraph' do
    paragraph = "This is a test. This test is only a test."
    expected_count = { 'this' => 2, 'is' => 2, 'a' => 2, 'test' => 3, 'only' => 1 }
    expect(word_count(paragraph)).to eq(expected_count)
  end

  it 'handles case insensitivity' do
    paragraph = "Hello hello HeLLo"
    expected_count = { 'hello' => 3 }
    expect(word_count(paragraph)).to eq(expected_count)
  end

  it 'handles punctuation' do
    paragraph = "Hello, world! Hello again."
    expected_count = { 'hello' => 2, 'world' => 1, 'again' => 1 }
    expect(word_count(paragraph)).to eq(expected_count)
  end
end

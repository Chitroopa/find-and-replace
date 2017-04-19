require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it('returns no match found if there is no matching string') do
    expect(("Hello world").find_and_replace("do", "to")).to(eq('No match found'))
  end
  it('find and replace the given word') do
    expect(("Hello world").find_and_replace("world", "universe")).to(eq('Hello universe'))
  end
  it('find and replace words with partial match') do
    expect(("I am walking my cat to the cathedral.").find_and_replace("cat", "dog")).to(eq('I am walking my dog to the doghedral.'))
  end
  it('find and replace words with capitalization and partial capitalization') do
    expect(("I am, Walking my cat to the cathedral.").find_and_replace("cat", "dog")).to(eq('I am, Walking my dog to the doghedral.'))
  end
end

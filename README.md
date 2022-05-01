# substrings
Substrings

The method substrings takes a string as its first argument and an array of
strings as its scond arguments. Then it breaks down the string in the first
input into substrings and compares it to the strings in the array.
Finally the method returns a hash with all the matches and how many times they 
occur.

Example (From theodinproject.com):

<code>  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 } </code>

Also works when the first input is a sentence:

  <code>   > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 } </code>
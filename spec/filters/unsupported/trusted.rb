opal_filter "Object#trusted/untrusted" do
  fails "Kernel#to_s returns an untrusted result if self is untrusted"

  fails "Array#+ does not infected even if an original array is untrusted"

  fails "Array#* with an integer copies the untrusted status of the original array if the passed count is not 0"
  fails "Array#* with an integer copies the untrusted status of the original array even if the array is empty"
  fails "Array#* with an integer copies the untrusted status of the original array even if the passed count is 0"
  fails "Array#* with a string with an untrusted separator untrusts the result if the array has two or more elements"
  fails "Array#* with a string with an untrusted separator does not untrust the result if the array has only one element"
  fails "Array#* with a string with an untrusted separator does not untrust the result if the array is empty"

  fails "Array#delete keeps untrusted status"

  fails "Array#delete_if keeps untrusted status"

  fails "Array#delete_at keeps untrusted status"

  fails "Array#clear keeps untrusted status"

  fails "Array#clone copies untrusted status from the original"

  fails "Array#collect does not copy untrusted status"

  fails "Array#compact does not keep untrusted status even if all elements are removed"

  fails "Array#compact! keeps untrusted status even if all elements are removed"

  fails "Array#collect! keeps untrusted status"

  fails "Array#concat keeps untrusted status"
  fails "Array#concat is not infected untrustedness by the other"
  fails "Array#concat keeps the untrusted status of elements"

  fails "Array#dup copies untrusted status from the original"

  fails "Array#flatten returns an untrusted array if self is untrusted"

  fails "Array#inspect untrusts the result if an element is untrusted"
  fails "Array#inspect does not untrust the result if the Array is untrusted but empty"
  fails "Array#inspect untrusts the result if the Array is untrusted"

  fails "Array#join with an untrusted separator untrusts the result if the array has two or more elements"
  fails "Array#join with an untrusted separator does not untrust the result if the array has only one element"
  fails "Array#join with an untrusted separator does not untrust the result if the array is empty"
  fails "Array#join untrusts the result if the result of coercing an element is untrusted"
  fails "Array#join does not untrust the result if the Array is untrusted but empty"
  fails "Array#join untrusts the result if the Array is untrusted and non-empty"

  fails "Array#map does not copy untrusted status"

  fails "Array#pop passed a number n as an argument keeps untrusted status"
  fails "Array#pop passed a number n as an argument returns a trusted array even if the array is untrusted"
  fails "Array#pop keeps untrusted status"

  fails "Array#map! keeps untrusted status"

  fails "Array#to_s untrusts the result if an element is untrusted"
  fails "Array#to_s does not untrust the result if the Array is untrusted but empty"
  fails "Array#to_s untrusts the result if the Array is untrusted"

  fails "Enumerable#to_a returns an untrusted array if self is untrusted"

  fails "Enumerable#entries returns an untrusted array if self is untrusted"

  fails "Enumerable#group_by returns an untrusted hash if self is untrusted"

  fails "Hash#inspect returns an untrusted string if self is untrusted and not empty"

  fails "Hash#to_a returns an untrusted array if self is untrusted"

  fails "Hash#to_s returns an untrusted string if self is untrusted and not empty"

  fails "String#chop untrusts result when self is untrusted"

  fails "String#gsub with pattern and replacement untrusts the result if the original string or replacement is untrusted"
  fails "String#gsub with pattern and Hash untrusts the result if the original string is untrusted"
  fails "String#gsub with pattern and Hash untrusts the result if a hash value is untrusted"
  fails "String#gsub with pattern and block untrusts the result if the original string or replacement is untrusted"

  fails "String#inspect untrusts the result if self is untrusted"

  fails "String#sub with pattern and Hash untrusts the result if the original string is untrusted"
  fails "String#sub with pattern and Hash untrusts the result if a hash value is untrusted"

  fails "MatchData#pre_match keeps untrusted status from the source string"
  fails "MatchData#post_match keeps untrusted status from the source string"
end

require "set"
# Given two strings s and t, determine if they are isomorphic.

# Two strings are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

# Example 1:

# Input: s = "egg", t = "add"
# Output: true
# Example 2:

# Input: s = "foo", t = "bar"
# Output: false
# Example 3:

# Input: s = "paper", t = "title"
# Output: true


# @param {String} s
# @param {String} t
# @return {Boolean}

s = "egg"
t = "add"

def is_isomorphic(s, t)
    if s.length != t.length
        return false
    end
    map = {}
    used_chars = Set.new
    (0...s.length).each do |i|
        if map[s[i]].nil?
            if used_chars.include?(t[i])
                return false
            end
            map[s[i]] = t[i]
            used_chars.add(t[i])
        elsif map[s[i]] != t[i]
            return false
        end
    end
    return true
end

puts is_isomorphic(s, t)

# ? is set a gem? why need to put require 'set' to get it to work?
# why can you iterate through a string? it's not an array?


#Resource: https://www.educative.io/edpresso/how-to-check-if-two-strings-are-isomorphic
# Two strings are isomorphic if one-to-one mapping is possible for every character of the first string to every character of the second string.

# For example, consider the two strings: “ACAB” and “XCXY”. We can map the characters of the first string to the characters of the second string as follows:

# ‘A’ maps to ‘X’.
# ‘C’ maps to ‘C’.
# ‘B’ maps to ‘Y’.

# Steps: ( 2 strings can't be isomorphic if they have diff lengths, so check that first)
# 1. Create a map to map chars from str1 and str2
# 2. Create a set that will keep track of already mapped chars
# 3. Take 1st char from str1 and str2 and store as c1 and c2
# 4. 1st condition, check to see if c1 is already in map
# 5. 2nd condition, check to see if c1 is in set, if it is, than c2 is already mapped to another char in str1, otherwise, map c1 to c2
# 6. Insert c2 into set ( Map: A => X, Set: X’)
# 7. Again, check if c1 is in map, if not, it is first time we've encounter this char
# 8. Check to see if c2 is in set, if not, map them: c1 => c2 in map and insert c2 into set ( Map: A => X, C => C) (Set: X, C)
# 9. Again, check to see if c1 is in map, it is now. Then see if it is mapped to any other char other than X or c2, if it is, then the strings aren't isomorphs
# 10. A is just mapped to X so we can continue, if you traversed whole string and haven't encountered condition that c1 is mapped to another char, than function terminates and they
# are isomorphs.

# class Isomorphic
#     {
#         public static boolean isIsomorphic(String str1, String str2)
#         {
#           // Two strings cannot be isomorphic if they have different lengths.
#             if (str1.length() != str2.length()) {
#                 return false;
#             }

#           // Use Java's built in map to store mappings of str1 chars to str2 chars.
#             Map<Character, Character> map = new HashMap<>();

#           // Use a set to keep track of already mapped characters.
#             Set<Character> set = new HashSet<>();

#             for (int i = 0; i < str1.length(); i++)
#             {
#                 char c1 = str1.charAt(i), c2 = str2.charAt(i);

#               // If c1 has been encountered before:
#                 if (map.containsKey(c1))
#                 {
#             // Return false if first occurrence of c1 is mapped to
#             // a different character.
#                     if (map.get(c1) != c2)
#                         return false;
#                 }
#               // If c1 is encountered for the first time, it has not been mapped yet:
#                 else
#                 {
#                   // Return false if c2 is already mapped to some other char in str1
#                     if (set.contains(c2))
#                         return false;

#                   // All checks passed. So insert in the map, and the set.
#                     map.put(c1, c2);
#                     set.add(c2);
#                 }
#             }
#             return true;
#         }

#         public static void main(String[] args)
#         {
#             String str1 = "ACAB";
#             String str2 = "XCXY";

#             if (isIsomorphic(str1, str2)) {
#                 System.out.print(str1 + " and " + str2 + " are isomorphic");
#             }
#             else {
#                 System.out.print(str1 + " and " + str2 + " are not isomorphic");
#             }
#         }
#     }

# Define a procedure named 'reverse' that takes an 'inputString' parameter.
proc reverse {inputString} {
    # Initialize an empty string to store the reversed string.
    set reversedString ""
    # Initialize an empty string to store individual words.
    set word ""
    # Iterate through each character in 'inputString'.
    foreach char [split $inputString ""] {
        # Check if the character is a space.
        if {[string is space $char]} {
            # If the 'word' is not empty (i.e., a word is found), add it to the 'reversedString' with a space.
            if {$word ne ""} {
                set reversedString "$word $reversedString"
                set word ""
            }
        } else {
            # If the character is not a space, append it to the 'word'.
            set word "${word}${char}"
        }
    }
    # If there's a word left at the end of the 'inputString', add it to the 'reversedString'.
    if {$word ne ""} {
        set reversedString "$word $reversedString"
    }
    # Return the final reversed string.
    return $reversedString
}

# Define an 'input1' string.
set input1 "TCL is a Tool Command Language"

# Call the 'reverse' procedure on 'input1' and store the result in 'result1'.
set result1 [reverse $input1]

# Print the original and reversed strings.
puts "original: $input1"
puts "reverse:  $result1"

# To take input from the user, comment 30-37 lines and uncomment the below lines.

# puts "Enter a string to reverse: "
# flush stdout
# set input1 [gets stdin]

# puts "original: $input1"
# puts "reverse:  $result1"


# Reverse function Using built-in function

# proc reverse {inputString} {
#     set words [split $inputString]
#     set reversedString [join [lreverse $words] " "]
#     return $reversedString
# }

# set input1 "TCL is a Tool Command Language"

# set result1 [reverse $input1]
# set result2 [reverse $input2]

# puts "Original: $input1"
# puts "Reversed: $result1"

# puts "Original: $input2"
# puts "Reversed: $result2"

# Define a procedure called "insertionSort" that takes an input list "arr".
proc insertionSort {arr} {
    # Get the number of elements in the input list "arr".
    set n [llength $arr]
    # Initialize a variable to keep track of the number of iterations.
    set iterations 0
    # Loop through the list starting from the second element (index 1).
    for {set i 1} {$i < $n} {incr i} {
        # Store the current element in a variable "key".
        set key [lindex $arr $i]
        # Initialize a variable "j" to compare elements to the left of the current element.
        set j [expr $i - 1]
        # Perform insertion sort: move elements to the right until the correct position for "key" is found.
        while {$j >= 0 && [lindex $arr $j] > $key} {
            # Replace the elements in the list to shift "key" to the correct position.
            set arr [lreplace $arr [expr $j+1] [expr $j+1] [lindex $arr $j]]
            # Increment the iteration count.
            set iterations [expr $iterations + 1]
            # Decrement "j" to check the previous element.
            set j [expr $j - 1]
        }
        # Place "key" in its correct sorted position.
        set arr [lreplace $arr [expr $j+1] [expr $j+1] $key]
        # Increment the iteration count.
        incr iterations
    }
    # Return a list containing the sorted array and the number of iterations.
    return [list $arr $iterations]
}

# Define a procedure called "quickSort" that takes an input list "arr".
proc quickSort {arr} {
    # Get the number of elements in the input list "arr".
    set n [llength $arr]
    # Initialize a variable to keep track of the number of iterations.
    set iterations 0
    # Check if the list has only one element or is empty, and return it.
    if {$n <= 1} {
        return [list $arr 0]
    } else {
        # Select the first element as the pivot.
        set pivot [lindex $arr 0]
        # Initialize two empty lists for elements less than and greater than the pivot.
        set left [list]
        set right [list]
        # Loop through the elements in "arr" starting from the second element (index 1).
        for {set i 1} {$i < $n} {incr i} {
            # Compare the current element with the pivot and place it in the appropriate list.
            if {[lindex $arr $i] < $pivot} {
                lappend left [lindex $arr $i]
            } else {
                lappend right [lindex $arr $i]
            }
            # Increment the iteration count.
            incr iterations
        }
        # Recursively sort the left and right sublists.
        set sortedLeft [quickSort $left]
        set sortedRight [quickSort $right]
        # Combine the sorted sublists with the pivot to get the final sorted list.
        set sortedArr [concat [lindex $sortedLeft 0] [list $pivot] [lindex $sortedRight 0]]
        # Add the iteration counts from the left and right sublists to the total iteration count.
        incr iterations [lindex $sortedLeft 1]
        incr iterations [lindex $sortedRight 1]
        # Return a list containing the sorted array and the total number of iterations.
        return [list $sortedArr $iterations]
    }
}

set numbers {1 2 4 5 4 8 96 4 7 8 5 1 2 3 6 9 7 1 2 55 6 8 4}

# Perform insertion sort on the input numbers and store the result.
set resultInsertion [insertionSort $numbers]
# Extract the sorted numbers and the number of iterations from the result.
set sortedNumbersInsertion [lindex $resultInsertion 0]
set iterationsInsertion [lindex $resultInsertion 1]

# Perform quick sort on the input numbers and store the result.
set resultQuick [quickSort $numbers]
# Extract the sorted numbers and the number of iterations from the result.
set sortedNumbersQuick [lindex $resultQuick 0]
set iterationsQuick [lindex $resultQuick 1]

# Print the results for insertion sort.
puts "Insertion Sort:"
puts "Sorted numbers: $sortedNumbersInsertion"
puts "Iterations: $iterationsInsertion"

# Print the results for quick sort.
puts "Quick Sort:"
puts "Sorted numbers: $sortedNumbersQuick"
puts "Iterations: $iterationsQuick"

# To take input from the user, comment 70-92 lines and uncomment the below lines.

# puts "Enter numbers separated by spaces:"
# flush stdout
# set input [gets stdin]
# set numbers [split $input]

# set resultInsertion [insertionSort $numbers]
# set sortedNumbersInsertion [lindex $resultInsertion 0]
# set iterationsInsertion [lindex $resultInsertion 1]

# set resultQuick [quickSort $numbers]
# set sortedNumbersQuick [lindex $resultQuick 0]
# set iterationsQuick [lindex $resultQuick 1]

# puts "Insertion Sort:"
# puts "Sorted numbers: $sortedNumbersInsertion"
# puts "Iterations: $iterationsInsertion"

# puts "Quick Sort:"
# puts "Sorted numbers: $sortedNumbersQuick"
# puts "Iterations: $iterationsQuick"

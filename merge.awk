BEGIN {
    # Define input and output file separators
    FS=","
    OFS=","
}
{
    # Read only parent.csv records into an array, using first field (the URL) as the array key
    if (NR==FNR) {
        parent[$1] = $0
        # Prevent any further processing
        next;
    }
    {
        # For child.csv, we also use first field as the (common) key
        key = $1

        # If the child.csv key is in the array of parent.csv file data
        if (key in parent) {
            # Output parent.csv data, with relevant data from child.csv appended
            print parent[key], $2
        }
        else {
            # Only needed whilst developing script, can remove.
            print "NO MATCH ON", $1
        }
    } 
}

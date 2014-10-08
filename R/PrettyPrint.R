listtostring <- function(listinput) {
    a <- attributes(listinput)
    if (is.null(a)) {
        return("")
    }
    keys <- a$names
    outstring <- ""
    for (i in 1:length(keys)) {
        key = keys[i]
        value = listinput[key]
        key = toString(key)
        value = toString(value)
        outstring <- paste(
            outstring,
            toString(key),
            ":",
            toString(value),
            "\n")
    }
    return(outstring)
}

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


dataframetostring <- function(dataframeinput) {
    listoutput <- as.list.data.frame(dataframeinput)
    outstring <- listtostring(listoutput)

    outstring
}


string <- function(object) {
    if (class(object) == "list") {
        return(listtostring(object))
    } else if (class(object) == "data.frame") {
        return(dataframetostring(object))
    }
}

tutil.log <- function(text) {
    f = file(filepath, open="a")
    write(text, f)
    close(f)
}

Logger <- setRefClass(
    "Logger",
    fields=list(
        filepath = "character"
    ),
    methods=list(
        initialize = function(...) {
            callSuper(..., filepath="/tmp/log")
        },
        log = tutil.log
    )
)

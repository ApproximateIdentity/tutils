tutil.log <- function(text) {
    f = file(filepath, open="a")
    write(text, f)
    close(f)
}

#' @export
Logger <- setRefClass(
    "Logger",
    fields=list(
        filepath = "character"
    ),
    methods=list(
        initialize = function(filepath, truncate = FALSE) {
            callSuper(filepath = filepath)
            if (truncate) {
                # Remove old data.
                f = file(filepath, open = "w")
                close(f)
            }
        },
        log = tutil.log
    )
)

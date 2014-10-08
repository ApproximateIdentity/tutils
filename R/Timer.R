tutils.split <- function() {
    newtime <- Sys.time()
    timediff <- newtime - time
    time <<- newtime
    format(timediff)
}

Timer <- setRefClass(
    "Timer",
    fields=list(
        time = "POSIXt"
    ),
    methods=list(
        initialize = function(...) {
            callSuper(..., time=Sys.time())
        },
        split = tutils.split
    )
)

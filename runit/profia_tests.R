test_plasfia_default <- function() {

    testDirC <- "plasfia"
    argLs <- list(zipfile = "./plasfia/plasFIA.zip",
                  library = "NULL",
                  ppmN = "2",
                  ppmGroupN = "1",
                  fracGroupN = "0.1",
                  kI = "2")

    argLs <- c(defaultArgF(testDirC), argLs)
    outLs <- wrapperCallF(argLs)

    checkEqualsNumeric(outLs[["datMN"]]["C100a", "M86.0965"], 1313797.6184402, tolerance = 1e-7)

}

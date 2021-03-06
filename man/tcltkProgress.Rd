\name{progress}
\alias{progress}
\alias{updateProgress}
\alias{killProgress}
\title{A simple tcltk progress window}
\description{Show progress of a task in a tcltk window as percentage}
\usage{
  progress(title="processing task...", message="", sub="")
  updateProgress(percentage, autoKill=FALSE, sub="")
  killProgress()
}
\arguments{
  \item{title}{The title of the tcltk window}
  \item{message}{A short test message to add to the window}
  \item{sub}{An additional text field that can be updated via\code{updateProgress}}
  \item{percentage}{An integer giving the percentage of completion}
  \item{autoKill}{Logical indicating whether to kill the display after
    100 is reached}
}

\details{Function \code{progress} creates the progress window and sets
  up the necessary environment. \code{updateProgress} takes as argument
  an integer value indicating the percentage of completion and updates
  the display. The integer value that gets passed to
  \code{updateProgress} will usually be generated by an iterator
  (e.g. in a for loop). \code{killProgress} may be called explicitely to
    kill the progress window. Alternatively one can set the argument
    autoKill of \code{updateProgress} to \code{TRUE} to automatically
      kill the window once a value of 100 is reached.
}

\value{The functions are called for their side effects.}

\author{Florian Hahne}


\examples{
if(interactive() && capabilities()["tcltk"]){
  progress(message="This is a progress display...", sub="(step 1 of 50)")
  for(i in 1:50) {
     zz = rnorm(1e5)
     updateProgress(i*2, autoKill=TRUE, sub=paste("(step", i, "of 50)"))
  }
}
}
\keyword{misc}


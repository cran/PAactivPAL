% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Standard_summary.R
\name{Standard}
\alias{Standard}
\title{Standard Physical Activity Summary}
\usage{
Standard(final_dat, bed_time, takeoff_time)
}
\arguments{
\item{final_dat}{Raw event file, will be cleaned in this function. Event file is required for this function.}

\item{bed_time}{Sleep and wake up time log, reported by participants. Log is not required for this function.}

\item{takeoff_time}{Take on and off time log, reported by participants. Log is not required for this function.}
}
\value{
\code{Year} The calendar year of recorded event

\code{Month} The calendar month of recorded event

\code{Day}   The calendar day of recorded event

\code{Dayofweek} The day of that week

\code{Weekday_or_weekend}  The recored event date is a weekday or weekend (0 for weekday, 1 for weekend)

\code{hours_worn_total} Total worn hours

\code{sed_hour}  Total sedantary hours

\code{stand_hour} Total stand hours

\code{step_hour} Total step hours

\code{step_count_total} Total Step count

\code{num_hour_over_3_METs} Number of hours that Metabolic Equivalent of Task (MET) is over 3

\code{MET_hours}  Total METs

\code{perc_sedentary} Proportion of sedentary

\code{perc_stand} Proportion of standing

\code{perc_step} Proportion of stepping
}
\description{
Summarize standard activity measures
}
\details{
All numbers are calculated in the given time period (day, hour, etc.). Total sedentary/standing/stepping hours are obtained from the summation of the duration times for sedentary/standing/stepping activities in the given time period.
}
\examples{
#For CRAN less than 5s running time policy, we only select the first day to run.
r1=Standard(sample_event[1:3095,],sample_bed_time[1,],sample_takeon_log[1,])
summary(r1)
}





create_subject_markdown <- function(schedule, subject, link, summary) {
  schedule <- dplyr::case_when(
    grepl(pattern = "1", x = schedule) ~ "schedule1-software-engineering",
    grepl(pattern = "2", x = schedule) ~ "schedule2-software-systems",
    grepl(pattern = "3", x = schedule) ~ "schedule3-ai-business"
  )

  filename <- subject |>
    stringr::str_remove(pattern = "\\s\\([A-Z]{3}\\)") |>
    tolower() |>
    gsub(pattern = "\\s", replacement = "-") |>
    paste0(".md")

  file_path <- file.path("oxford-computer-science", schedule, filename)

  description <- summary

  cat(
    "---\n",
    "type: notes\n",
    paste0("title: ", subject, "\n"),
    paste0("resource: ", link, "\n"),
    "tags: [notes, website, oxford computer science, courses]\n",
    paste0("timestamp: ", as.character(Sys.time()), "\n"),
    "---\n\n",
    "## Summary\n\n",
    description,
    "\n",
    file = file_path
  )
}



Map(
  f = create_subject_markdown,
  schedule = df$schedule,
  subject = df$subject,
  link = df$link,
  summary = df$summary
)




base_path <- "oxford-computer-science"

file_list <- list.files(
  "oxford-computer-science", full.names = TRUE, recursive = TRUE
) |>
  (\(x) x[c(1, 3:length(x))])()


file_title <- c(
  "Courses Overview",
  df |>
    dplyr::filter(schedule == "Schedule 1: Software Engineering") |>
    dplyr::arrange(subject) |>
    dplyr::pull(subject),
  df |>
    dplyr::filter(schedule == "Schedule 2: Software and Systems Security") |>
    dplyr::arrange(subject) |>
    dplyr::pull(subject),
  df |>
    dplyr::filter(schedule == "Schedule 3: AI for Business") |>
    dplyr::arrange(subject) |>
    dplyr::pull(subject)
)

cat(
  paste0("* [Courses Overview](/", file.path(base_path, "courses-overview.md"), "\n"),
  "\n",
  "# Schedule 1: Software Engineering\n",
  paste0(
    "* [", file_title[grepl("1", x = file_list)], "](/",
    file_list[grepl("1", x = file_list)], ")", "\n"
  ),
  "\n",
  "# Schedule 2: Software and Systems Security\n",
  paste0(
    "* [", file_title[grepl("2", x = file_list)], "](/",
    file_list[grepl("2", x = file_list)], ")", "\n"
  ),
  "\n",  
  "# Schedule 3: AI for Business\n",
  paste0(
    "* [", file_title[grepl("3", x = file_list)], "](/",
    file_list[grepl("3", x = file_list)], ")", "\n"
  ),
  file = "oxford-computer-science/index.md",
  sep = ""
)
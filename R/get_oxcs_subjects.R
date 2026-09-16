# Get University of Oxford Department of Computer Science course subjects ------

.url <- "https://www.cs.ox.ac.uk/professionalprogramme/courses/subjects.html"

.session <- rvest::session(.url)

subjects_header <- .session |>
  rvest::html_elements(css = ".row .column p") |>
  rvest::html_text()

subject_text <- .session |>
  rvest::html_elements(css = ".row .column a") |>
  rvest::html_text()

subject_links <- .session |>
  rvest::html_elements(css = ".row .column a") |>
  rvest::html_attr(name = "href") |>
  gsub(
    pattern = "\\.\\.",
    replacement = "https://www.cs.ox.ac.uk/professionalprogramme"
  )

df <- tibble::tibble(
  schedule = subjects_header,
  subject = subject_text,
  link = subject_links
)

subjects_header <- .session |>
  rvest::html_elements(css = ".row .column1 p b") |>
  rvest::html_text()

subject_text <- .session |>
  rvest::html_elements(css = ".row .column1 a") |>
  rvest::html_text()

subject_links <- .session |>
  rvest::html_elements(css = ".row .column1 a") |>
  rvest::html_attr(name = "href") |>
  gsub(
    pattern = "\\.\\.",
    replacement = "https://www.cs.ox.ac.uk/professionalprogramme"
  )

df <- rbind(
  df,
  tibble::tibble(
    schedule = subjects_header,
    subject = subject_text,
    link = subject_links
  )
)


subjects_header <- .session |>
  rvest::html_elements(css = ".row .column2 p b") |>
  rvest::html_text() |>
  (\(x) x[1])()

subject_text <- .session |>
  rvest::html_elements(css = ".row .column2 a") |>
  rvest::html_text()

subject_links <- .session |>
  rvest::html_elements(css = ".row .column2 a") |>
  rvest::html_attr(name = "href") |>
  gsub(
    pattern = "\\.\\.",
    replacement = "https://www.cs.ox.ac.uk/professionalprogramme"
  )

df <- rbind(
  df,
  tibble::tibble(
    schedule = subjects_header,
    subject = subject_text,
    link = subject_links
  )
) |>
  dplyr::slice(-45) |>
  dplyr::mutate(
    subject = trimws(subject),
    subject_code = stringr::str_extract(string = link, pattern = "[A-Z]{3}"),
    summary = lapply(X = link, FUN = get_summary) |>
      unlist()
  )



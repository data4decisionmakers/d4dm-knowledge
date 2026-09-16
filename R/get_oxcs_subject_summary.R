

.url <- "https://www.cs.ox.ac.uk/professionalprogramme/subjects/ALG.html"

.session <- rvest::session(.url)

.session |>
  rvest::html_elements(css = "#content p") |>
  rvest::html_text() |>
  (\(x) x[x != ""])() |>
  (\(x) x[1])()


get_summary <- function(.url) {
  .session <- rvest::session(.url)

  .session |>
    rvest::html_elements(css = "#content p") |>
    rvest::html_text() |>
    (\(x) x[x != ""])() |>
    (\(x) x[1])()
}

x <- lapply(X = df$link, FUN = get_summary)

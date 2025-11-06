# renv-setup.R

# Explicitly set Python path for reticulate
#Sys.setenv(RETICULATE_PYTHON = "/opt/hostedtoolcache/Python/3.10.18/x64/bin/python")

# Ensure remotes is available
if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}

# Try installing GitHub package with fallback
auth_token <- Sys.getenv("GITHUB_PAT")

# tryCatch({
#   remotes::install_github("cararthompson/casaviz", auth_token = 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)
#   message("✅ casaviz installed successfully from GitHub.")
# }, error = function(e) {
#   message("⚠️ Failed to install casaviz from GitHub: ", e$message)
#   message("📦 Falling back to local copy or skipping install.")
#   # Optional: install from local source if available
#   # remotes::install_local("path/to/casaviz.tar.gz")
# })

# Restore renv environment
install.packages("renv", repos = "https://cloud.r-project.org")
renv::restore()

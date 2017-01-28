# Variable, global to package's namespace.
# This function is not exported to user space and does not need to be documented.
ZotOptions <- settings::options_manager(user = NULL, credentials = NULL)

#' Sets 'zoteroR' options
#'
#' It allows to preliminary store options frequently used by 'zoteroR', thus removing the requirement to specify them each time a function is called.
#' @param user A Zotero userId.
#' @param credentials Either an R object created with AuthZot(store = TRUE), or an API secret key with write access created at https://www.zotero.org/settings/keys
#' @return Nothing. Used for its side effects (stores settings).
#' @export
#' @examples
#' ZotOptions(user = 12345, credentials = <API>)
SetZotOptions <- function(...){
    # protect against the use of reserved words.
    settings::stop_if_reserved(...)
    ZotOptions(...)
}
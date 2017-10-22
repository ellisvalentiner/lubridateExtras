# Contributing

lubridateExtras is an **Open Source** project and there are different ways to contribute.

Please, use [GitHub issues](https://github.com/ellisvalentiner/lubridateExtras/issues) to **report errors/bugs** or to **ask for new features**.

Contributions are welcome in the form of **pull requests**. Please follow these guidelines:

- Write code against the master branch but pull request against the dev branch.
- By making a pull request, you're agreeing to license your code under a [MIT license](https://github.com/ellisvalentiner/lubridateExtras/blob/dev/LICENSE.md).
- Code should be documented and tested.

## Style

### Function/variable naming & general syntax

* Use `snake_case` for function names.

* Avoid function names that conflict with base packages or other popular ones (e.g. `ggplot2`, `dplyr`, `magrittr`, `data.table`).

* Use an `object_verb()` naming scheme for functions that take a common data type or interact with a common API. `object` refers to the data/API and `verb` the primary action. This scheme helps avoid namespace conflicts with packages that may have similar verbs, and makes code readable and easy to auto-complete.

* Functions that manipulate an object/data and return an object/data of the same type, should accept the object/data as the first argument of the function so as to enhance compatibility with the pipe operator (`%>%`)

### Documentation

* All exported package functions should be fully documented with examples.

* When using `roxygen2`, add `#' @noRd` to internal functions.

### Testing

* Changes should pass `R CMD check`/`devtools::check()` on all major platforms.

## Conduct

We adhere to the [R Consortium and the R Community Code of Conduct](https://wiki.r-consortium.org/view/R_Consortium_and_the_R_Community_Code_of_Conduct).

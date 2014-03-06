# Adding Helper Modules to Rspec

## Context
When using **Capybara** for testing, sometimes you want to test features that require **authentication** / **authorization**. This often requires manually visiting the **/sessions/new** path, inputting the necessary info and clicking submit each time. Hard writing this is a clear violation of the **DRY** principle. We need a way to encapsulate this functionality to **reuse** in other acceptance tests.
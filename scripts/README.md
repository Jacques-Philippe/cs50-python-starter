# Purpose

This directory contains scripts to try and make your python experience a little more convenient. **All these scripts should be run from within your virtual environment (it should be activated), and from the main repo directory.**

# How to run any of the scripts

```
cd [project root]
source scripts/[the script]
```

# format

This script will reformat the contents of the working directory, `src` using the `Black` formatter, to unify code formatting and line spacing.

# test

This script will run any tests you may have defined using the `pytest` package in the `src` directory. See [this](https://docs.pytest.org/en/7.1.x/getting-started.html) for more info on `pytest` but one thing to note is that you need to prefix files and functions you want to run as tests with `test_`.

# lint

This script will basically rate your code on cleanliness

# load-requirements

This script will take care of loading your virtual environment requirements from the `requirements.txt` file.

# save-requirements

This script will take care of saving your requirements to the `requirements.txt` file, to make sure you can share your project more easily.

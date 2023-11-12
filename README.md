# Purpose

A repo for Mac OS X users to serve as the center for any python project following along with [this AI course](https://www.youtube.com/watch?v=5NgNicANyqM&ab_channel=freeCodeCamp.org)

# On this project's structure

This project is made up of the following

- `scripts` to make your life easier,
- `src` to contain your code per project

# On optimizing your experience with VSCode

Download it [here](https://code.visualstudio.com/download) if you don't have it, and make sure you install and activate the `Python` extension. You can install extensions directly from `VSCode`.

# On virtual environments

In python one of the strategies for managing per-project package dependencies is through virtual environments. The way virtual environments usually work is the person who clones the project is responsible for creating one and afterwards you download all the required dependencies for that virtual environment from a file whose name is something like `requirements.txt`

**Note: you can tell the virtual environment is activated in the terminal if your prompt is preceded by a (.venv)**

## How to create and install dependencies for the virtual environment

After cloning this project, and assuming you're on a mac, run the following

```
cd src # go to the src directory
python3 -m venv .venv # create a virtual environment named .venv
source .venv/bin/activate # activate the virtual environment
cd .. # go back to project root
. scripts/load-requirements.sh # install your virtual environment dependencies
```

# To run whatever you're working on

Once you've defined something you're ready to run, after activating the virtual environment, you just run

```
python [your python file]
```

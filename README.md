Hi 👋, I'm Christian
- 🔭 I’m currently working on **My DevOps Project With Codeco**
🌱 I’m currently learning On My Bash Project

Bash Scripting Exercises:

A collection of hands-on Bash exercises completed during my CoderCo learning journey.

This repository documents my practice with Linux shell scripting, from variables and arithmetic to functions, file processing, input validation, and debugging. Each script focuses on a small concept that contributes to writing useful automation.

## Contents

- [Learning objectives](#learning-objectives)
- [Exercise guide](#exercise-guide)
- [Requirements](#requirements)
- [Getting started](#getting-started)
- [Running the exercises](#running-the-exercises)
- [Key Bash concepts](#key-bash-concepts)
- [Troubleshooting](#troubleshooting)
- [Lessons learned](#lessons-learned)
- [Future improvements](#future-improvements)
- [Author](#author)

## Learning objectives

Through these exercises, I have practised how to:

- Use a shebang to identify the script interpreter.
- Declare variables and reference their values.
- Perform integer arithmetic and numeric comparisons.
- Control execution using `if`, `elif`, `else`, and nested conditions.
- Repeat commands with loops and control iterations with `break` and `continue`.
- Define functions and pass arguments to them.
- Capture user input and validate it.
- Read and write text files.
- Connect commands through pipes and redirect their input and output.
- Generate and compare file checksums.
- Read environment variables.
- Use exit codes and Bash options to investigate failures.
- Run scripts in Ubuntu and manage executable permissions.

## Exercise guide

The files below are grouped by learning topic. Descriptions indicate their exercise focus; inspect each script for its exact inputs, commands, and behaviour.

### Variables and arithmetic

| File | Exercise focus |
| --- | --- |
| `Arithmetic Expansion.sh` | Integer calculations using Bash arithmetic expansion. |
| `rectangle.sh` | Calculate a rectangle's area and perimeter from length and width. |
| `Reading-Environment-Variables.sh` | Access values available through environment variables. |

### Conditional statements

| File | Exercise focus |
| --- | --- |
| `ifstatement.sh` | Basic conditional execution. |
| `ifstatement2.sh` | Combine numeric conditions using logical operators. |
| `else statement.sh` | Provide an alternative path when a condition is false. |
| `elif statements.sh` | Check multiple conditions in sequence. |
| `elif&else statement.sh` | Combine `if`, `elif`, and `else` branches. |
| `nested-ifstatements.sh` | Place a conditional statement inside another condition. |

### Loops

| File | Exercise focus |
| --- | --- |
| `loops.sh` | Repeat commands using loops. |
| `while loops.sh` | Repeat commands while a condition succeeds. |
| `breakloop.sh` | Exit a loop with `break`. |
| `continueloop.sh` | Skip the remainder of an iteration with `continue`. |

### Functions and user input

| File | Exercise focus |
| --- | --- |
| `functions2.sh` | Function arguments, age validation, and return statuses. |
| `user inputs functions.sh` | Capture input and use it within functions. |

### Files, pipes, and checksums

| File | Exercise focus |
| --- | --- |
| `reading-files.sh` | Read a text file line by line. |
| `Writing-files.sh` | Practise writing output to files. |
| `piping.sh` | Pass one command's output into another command. |
| `file-checksums.sh` | Generate a file checksum using `md5sum`. |
| `Compare-Checksums.sh` | Practise comparing file checksums. |
| `log.txt` and `read.txt` | Sample text files for file-processing exercises. |

MD5 is included here as a learning exercise for checksum commands. It is not suitable for password storage or proving that a file has not been maliciously altered.

### Error handling and debugging

| File | Exercise focus |
| --- | --- |
| `exitcodes.sh` | Inspect and use command exit statuses. |
| `error-handling.sh` | Handle failures explicitly. |
| `Error-Handling2.sh` | Additional error-handling practice. |
| `set-e.sh` | Explore Bash's exit-on-failure option and its exceptions. |
| `set-u.sh` | Detect references to unset variables. |
| `set-x.sh` | Trace commands as Bash executes them. |
| `set-eux.sh` | Explore the combined behaviour of these options. |

### Repository support files

- `README.md`: project documentation.
- `.gitattributes`: repository-level file attributes; inspect the file for the current rules.

## Requirements

- Bash.
- Ubuntu, another suitable Linux environment, or Ubuntu through Windows Subsystem for Linux (WSL).
- Git to clone and update the repository.
- Standard command-line tools used by the exercises, such as `cat`, `ls`, `wc`, and `md5sum`.
- A text editor such as Visual Studio Code or Vim.

The examples below assume Ubuntu/WSL. Some scripts may also run in Git Bash, depending on the commands they use. PowerShell does not interpret Bash syntax directly.

## Getting started

### Clone the repository

Using HTTPS:

```bash
git clone https://github.com/christiandev132233/Bash.sh.git
cd Bash.sh
```

Or, with SSH authentication configured:

```bash
git clone git@github.com:christiandev132233/Bash.sh.git
cd Bash.sh
```

If the repository is private, cloning requires access and authentication. If you already have a local copy, open that folder instead of cloning another copy.

### Check the environment

```bash
bash --version
pwd
ls
```

`pwd` shows the current working directory. `ls` lists its visible contents. Run exercises from the repository root unless the script specifies a different location.

### Open in Visual Studio Code

From the repository directory in Ubuntu/WSL:

```bash
code .
```

Use an Ubuntu/WSL terminal in VS Code to run the scripts. Scripts using `read` need an interactive terminal; VS Code's Output panel does not accept user input.

## Running the exercises

Review a script before running it, especially exercises that write files or intentionally demonstrate failures. Save edits before executing the file.

### Run a script using Bash

```bash
bash rectangle.sh
```

Using the rectangle example with length `5` and width `10`, the expected result is:

```text
Rectangle Area: 50
Rectangle Perimeter: 30
```

### Run a file with spaces or special characters in its name

Quote the filename:

```bash
bash "Arithmetic Expansion.sh"
bash "while loops.sh"
bash "elif&else statement.sh"
```

Quoting prevents spaces from splitting the filename into separate arguments and prevents characters such as `&` from being interpreted as shell operators.

### Make a script executable

```bash
chmod +x rectangle.sh
./rectangle.sh
```

`chmod +x` adds execute permission. `./` tells the shell to use the script in the current directory. Running `bash rectangle.sh` does not require the script itself to have execute permission.

### Run an interactive exercise

```bash
bash "user inputs functions.sh"
```

Follow the prompts in the terminal. Other interactive exercises, such as age validation, may ask for different input.

### Run the file-reading exercise

```bash
bash reading-files.sh
```

If the script refers to `./log.txt`, that path is resolved from the terminal's current directory, not automatically from the script's directory. Keep the required sample file available at the referenced location.

### Check syntax without executing a script

```bash
bash -n rectangle.sh
```

No output normally means Bash found no syntax errors. This does not establish that the script's logic is correct or its external commands will succeed.

### Trace execution

```bash
bash -x rectangle.sh
```

Tracing prints expanded commands as they run. Avoid tracing scripts that handle credentials or other private values because expanded values can appear in the output.

## Key Bash concepts

### Shebang

```bash
#!/bin/bash
```

Identifies Bash as the interpreter when the executable script is launched directly.

### Variables and quoting

```bash
name="Christian"
echo "Hello, $name!"
```

Assignments have no spaces around `=`. `$name` accesses the value. Double quotes preserve spaces in expanded values while allowing variable expansion.

### Arithmetic

```bash
length=5
width=10
area=$((length * width))
echo "$area"
```

`$((...))` evaluates integer arithmetic and substitutes the result.

### Conditions

```bash
grade=95

if [ "$grade" -ge 90 ] && [ "$grade" -le 100 ]; then
    echo "Excellent"
fi
```

`-ge` means greater than or equal to; `-le` means less than or equal to. `&&` requires both tests to succeed. Each `if` statement ends with `fi`.

### Functions and arguments

```bash
greet_user() {
    local name="$1"
    echo "Hello, $name!"
}

greet_user "Christian"
```

Defining a function does not execute it; the final line calls it. Within a function, `$1` is the first argument passed to that function. `local` limits the variable to the function's scope.

Other useful parameters include:

| Parameter | Meaning |
| --- | --- |
| `$0` | The script or shell invocation name. |
| `$1` | The first positional argument. |
| `"$@"` | All positional arguments, preserving each as a separate argument. |
| `$#` | The number of positional arguments. |
| `$?` | The exit status of the most recently completed command. |

### Reading a file

```bash
while IFS= read -r line || [[ -n "$line" ]]; do
    printf '%s\n' "$line"
done < "log.txt"
```

- `IFS=` prevents trimming leading and trailing whitespace.
- `read -r` preserves backslashes.
- `<` supplies the file as input to the loop.
- The extra condition processes a final non-empty line even when it lacks a terminating newline.
- `printf` prints the line using an explicit format.

This is a reference example for the concept; individual exercise files may use simpler versions.

### Pipes and redirection

| Syntax | Meaning |
| --- | --- |
| `command1 \| command2` | Send the first command's standard output to the second command's standard input. |
| `command > file` | Write standard output to a file, replacing its existing contents. |
| `command >> file` | Append standard output to a file. |
| `command < file` | Read standard input from a file. |
| `command 2> errors.log` | Redirect standard error to a file. |
| `command > /dev/null` | Discard standard output. |

Redirections can create or overwrite files. Choose output paths deliberately when experimenting.

### Exit statuses and debugging options

An exit status of `0` conventionally indicates success. A nonzero status indicates failure or another condition defined by the command.

| Option | Behaviour |
| --- | --- |
| `set -e` | Exit on certain unhandled command failures; exceptions apply, including many conditional contexts. |
| `set -u` | Treat many expansions of unset variables as errors. |
| `set -x` | Print execution traces of expanded commands. |

These options support debugging and failure detection, but they do not replace explicit input validation and error handling.

## Troubleshooting

| Problem | Likely cause and next step |
| --- | --- |
| `chmod: command not found` in PowerShell | Switch to Ubuntu/WSL or Git Bash before using Linux commands. |
| `No such file or directory` | Check `pwd`, run `ls`, and verify the exact filename and relative path. |
| `Permission denied` when using `./script.sh` | Add execute permission with `chmod +x script.sh`, or invoke it with `bash script.sh`. |
| A filename with spaces does not run | Quote the filename, such as `bash "while loops.sh"`. |
| `unexpected end of file` | Check for missing quotes, `fi`, `done`, braces, or parentheses; use `bash -n`. |
| A function produces no output | Confirm the function is actually called after it is defined. |
| A variable expands to an empty value | Check spelling, case, assignment syntax, and whether it was set. |
| The script waits without finishing | It may be waiting for input through `read`; use the Terminal panel. |
| A text file is visible in VS Code but cannot be read | The terminal may be in a different folder from the file. |
| Edited code appears not to run | Save the file and verify that the command points to the correct copy. |
| Errors mention `bash\r` or `$'\r'` | Check for Windows CRLF line endings; save the script with LF line endings. |

## Lessons learned

The exercises have helped me understand that small details make a significant difference in shell scripting:

- Bash variable names are case-sensitive.
- Spaces around an assignment operator change how a command is interpreted.
- Function definitions and function calls must use matching names.
- Relative paths depend on the current working directory.
- Balanced brackets, quotes, and block terminators are essential.
- Quoting variables and filenames prevents unintended splitting and expansion.
- An error message is useful evidence for narrowing down a problem.
- Writing a script is only part of the task; testing expected and unexpected inputs matters too.

## Project status

This repository contains learning exercises that may evolve as I review and improve my code. Examples are intended for experimentation rather than production use. Script behaviour and inputs should be checked in the individual files; this README does not claim that every script has been independently tested.

## Future improvements

- Add clearer usage comments and example output to each script.
- Standardise filenames for consistency.
- Improve missing-file checks and input validation.
- Add ShellCheck and formatting checks.
- Add focused tests for scripts with more complex behaviour.
- Combine selected exercises into practical system administration tools.

These are planned improvements rather than tools already configured in this repository.

## Author

**Christian Osadume**

Learning Linux, Bash, Git, and automation through hands-on CoderCo exercises as I work towards DevOps engineering.

[GitHub profile](https://github.com/christiandev132233)


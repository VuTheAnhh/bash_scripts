# PARAMETERS

DEFINITION

Parameters are entities that store values

There are 3 types of parameters

- Variables
- Positional parameters
- Special parameters

# VARIABLES

DEFINITION

Variables are parameters that you can change the value of

2 types of variables

- USER-DEFINED VARIABLES
- SHELL VARIABLES ( -> BOURNE SHELL VARIABLES; -> BASH SHELL VARIABLES )

SETTING THE VALUE OF A VARIABLE

name=value

Note 1: There should be no spaces around the equals sign

Note 2: Names of user-defined variables should be all lowercase

SOME COMMON SHELL VARIABLES

| COMMAND | MEANING |
| --- | --- |
| HOME | Absolute path to the current user’s home directory |
| PATH | List of directories that the shell should search for executable files |
| USER | The current user’s username |
| HOSTNAME | The name of the current machine |
| HOSTTYPE | The current machine CPU architecture |
| PS1 | The terminal prompt string |

# PARAMETER EXPANSION

SYNTAX

- Simple Syntax: $parameter
- Advanced Syntax: ${parameter}

DEFINITION

Parameter expansion is used to retrieve the value stored in a parameter.

PARAMETER EXPANSION TRICKS

1 ${parameter^}

Convert the first character of the parameter to uppercase

2 ${parameter^^}

Convert all characters of the parameter to uppercase

3 ${parameter,}

Convert the first character of the parameter to lowercase

4 ${parameter,,}

Convert all characters of the parameter to lowercase

5 ${#parameter}

Display how many characters the variable’s value contains

6 ${parameter:offset:length}

The shell will expand the value of the parameter starting at the character number defined by “offset” and expand up to a length of “length”

Note: None of these alter the value stored in the parameter. They just change how it is displayed after the expansion

# COMMAND SUBSTITUTION

DEFINITION

Command Substitution is used to directly reference the result of a command

Syntax for command substitution

$(command)

# ARITHMETIC EXPANSION

DEFINITION

Arithmetic Expansion is used to perform mathematical calculations in your scripts.

Syntax for Arithmetic Expansion

$((expression))

# ARITHMETIC EXPANSION

**ARITHMETIC OPERATORS RANKED IN ORDER OF PRECEDENCE (HIGHEST PRECEDENCE FIRST):**

| OPERATOR(S) | MEANING(S) | COMMENTS |
| --- | --- | --- |
| ( ) | Parentheses | Anything placed in parentheses is given the highest precedence and is always run first. |
| \*\* | Exponentiation<br><br>2^^4 means 2 to the power of 4, which is 16 |     |
| \*,/, and % | Multiplication. Division, and Modulo<br><br>Modulo calculates the remainder of a division | These have the same precedence |
| \+ and - | Addition and substraction | These have the same precedence |

Note: When two operators have the same precedence, the one furthest to the left gets performed first.

# THE BC COMMAND

Using the bc command

echo “expression” | bc

Using the scale variable to control the number decimal places shown

echo “scale=value: expression” | bc

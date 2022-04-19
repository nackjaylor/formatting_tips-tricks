# UG Formatting Tips and Tricks
Repo constructed by tutors in the School of AMME and [ACFR](robotics.sydney.edu.au) at the [University of Sydney](sydney.edu.au) with tips and tricks for formatting of formal engineering reports and assignments.

Communication of ideas, results and technical content clearly and effectively is integral to engineering. Getting into good habits prior to undertaking your undergraduate thesis or entering industry will help you to ensure you can get across your work not only to those skilled in your field, but also those outside of it. Many of the semantics of this can be "set-and-forget" in that you can standardise your figures, tables and presentation such that you can focus on getting the words right on a page.

Our intention for this repo is to give you an idea of best practice with regards to formatting so you get an appreciation for how the presentation of a document affects the clarity on the readers end.

## Contents
- [Figures](#Figures)
- [Tables](#Tables)
- [Mathematics](#Mathematics)
- [Calculations](#Calculations)
- [Code](#Code)

<a name=Figures></a>
## Figures
TODO
### Quality Figures

### Presenting 3D Info

### Insets

### Captions

### Titles/Axes

### Graphs & Grids


<a name=Tables></a>
## Tables
TODO


<a name=Mathematics></a>
## Mathematics

### Functions Vs. Variables
As your notation gets more complex, you increasingly find yourself needing to use new variables. Someone reading your work therefore needs to quickly understand what the variables in each equation are. Functions are often denoted by several letters, and it can get very confusing which variables are variables and which are functions if you're lazy and don't distinguish them. Take the example below:

<img src="https://latex.codecogs.com/png.image?\dpi{120}\bg{white}sin(x)=s\times&space;i\times&space;n(x)&space;\neq&space;\sin(x)">

It is clear here what we mean - but it could be confusing if you use the letters "s", "i" and a function "n(x)" elsewhere in your manuscript. For this reason, any user defined functions (sign, heaviside, trigonometric functions, argmin/argmax etc.) or common functions (sin, cos, tan) should be positioned upright. This is as simple as adding a backslash before the command if the functions are found in a package. If not, you can define your own or use the `\mathrm{name}` command to remove the italics from the block.

This should only be done for functions whose names are more than one letter long, for example it is perfectly fine to denote the below:

<img src="https://latex.codecogs.com/png.image?\dpi{120}\bg{white}f(x)=\sin(x)">

### Precise Choice of Operators
Some operators don't mean what you think they mean. For example:

<img src="https://latex.codecogs.com/png.image?\dpi{120}\bg{white}A*b&space;\neq&space;A&space;\times&space;b&space;\neq&space;Ab">

If you're still early in your studies, these look to be equivalent. In actuality, the first expression is often used to denote a convolution between A and b, the second a cross product and finally a matrix multiplication between A and b. It is very important that you make your notation clear and correct: choose your operators precisely and carefully, making note of what is standard in the field you're working in.

A good rule is to not use any operator for a multiplication (matrix or scalar). Ensure you check your notation thoroughly playing a mathematical [Devil's Advocate](https://en.wikipedia.org/wiki/Devil%27s_advocate) with each line of working.

### Helpful Packages and Resources

- [Matrix Cookbook](https://www.math.uwaterloo.ca/~hwolkowi/matrixcookbook.pdf): A great resource by the University of Waterloo. Format matrix expressions as in this book.
- [`physics` LaTeX Package](http://mirrors.ibiblio.org/CTAN/macros/latex/contrib/physics/physics.pdf): This wraps some common matrix expressions, derivatives etc. up in commands. Well worth using.

<a name=Calculations></a>
## Calculations

### Units
Units should be included for any quantity that has a physical meaning. The units should only be included on the last line of working with a final answer and not throughout. Similar to the discussion on functions above, it is a good idea to distinguish units from variables. You can do this by adding a space, and then using upright text after a final calculation (`\,\mathrm{units}` works okay).

A package highly recommended for this is the [siunitx package](https://mirror.aarnet.edu.au/pub/CTAN/macros/latex/contrib/siunitx/siunitx.pdf) where you can use pre-defined units (or units you've defined) to standardise the formatting. It also forces you to double check the dimensions of the final value by inputting the unit name.

### Evaluation & Substitution
This should go without saying but - only substitute at the last step. Working through a calculation with a mix of values and variables gets messy, particularly when you cancel things out.

You should not have any numbers (except coefficients) until the last 2 lines of working. The second last line can be one of 2 things: a calculator readout prior to rounding or a value substitution. Often, this is unnecessary: it merely shows where you calculation may have gone wrong. The final line should be the numeric answer with any units. 

<a name=Code></a>
## Code

### Screenshots of code/terminals
A no-go unless specifically asked for. This can cause issues because text is not machine readable and cannot go through plagiarism checking software. To someone reading it, there is little to no benefit as we don't know whether the code runs or how it fits into the broader picture. Instead, if you want to explain how you implemented some code you should do so mathematically or [use a pseudocode listing](https://www.overleaf.com/learn/latex/Algorithms).

### Code for Appendices
TODO

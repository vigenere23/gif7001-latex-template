# GIF-4100/GIF-7001 LaTeX template

This is a LaTeX template + class for the course's assignements. It offers multiple math notations often used in class, plus a way to create the assignement header. 

## Usage

Simply download the latest .zip file containing the 3 files. ([link](https://github.com/vigenere23/gif7001-latex-template/archive/master.zip))

## Documentation

The LaTeX class offers both french and english alternatives for each commands.

### Mathematical notations

- #### `\vvec{<vector>}`
  Shows a vector variable with the underline notation.
  
  ##### Variables
  - `vector`: the vector variable to annotate

- #### `\vhvec{<vector>}` or `\vvech{<vecteur>}`
  Shows a vector variable with both the underline and tilde notation.
  
  ##### Variables
  - `vector`: the vector variable to annotate

- #### `\vmat{<matrix>}`
  Shows a matrix variable with the double underline notation.
  
  ##### Variables
  - `matrix`: the matrice variable to annotate

- #### `\vhmat{<matrix>}` or `\vmath{<matrice>}`
  Shows a matrix variable with both the double underline and tilde notation.
  
  ##### Variables
  - `matrix`: the matrix variable to annotate

- #### `\vframe[<from_frame?>]{<to_frame>}` or `\vrep[<repère_origine?>]{<repère_final>}`
  Shows the geometrical frames notation
  
  ##### Variables
  - `from_frame?` (optional) : the frame before the transformation
  - `to_frame` : the frame after the transformation (if used with a matrix) or the current frame of the variable (if used with a vector).

### Assignement header

- #### `\vname{student_name}` or `\vnom{nom_étudiant}`
  > :warning: use **before** the `\begin{document}` command
  
  Defines the name of the student.
  
  ##### Variables
  - `student_name` : the name of the student
  
- #### `\vni{student_ni}`
  > :warning: use **before** the `\begin{document}` command
  
  Defines the student's ulaval's NI (identification number). **Not to confuse with IDUL**.
  
  ##### Variables
  - `student_ni` : the student's identification number
  
- #### `\vcourse{course_code}` or `\vsigle{sigle}`
  > :warning: use **before** the `\begin{document}` command
  
  Defines the course of the assignement.
  
  ##### Variables
  - `course_code` : the course's code (in format `GIF-7001`)
  
- #### `\vduedate{due_date}` or `vdate{date}`
  > :warning: use **before** the `\begin{document}` command
  
  Defines the due date of the assignement.
  
  ##### Variables
  - `due_date` : the due date of the assignement
  
- #### `\vshort` or `\vcourt`
  Shows the assignements header according to the previously defined informations (name, ni, course, etc.).

# Use this file to configure some general variables

@title='\Large{\textit{Curriculum Vit\ae{}}}\\\\\\' + "\n" +
       '\Huge{\textbf{Yann Esposito}}\\\\\\' + "\n" +
       '\small\textit{Expert en Machine Learning}' + "\n"

@author="Yann Esposito"

# file name
@pdfname="cv"

# LaTeX headers (before \begin{document})
@latex_headers=''

# Comment the following line if you haven't 
# Hoefler Text font installed on your system
@latex_headers<<='\setmainfont{Hoefler Text}'
# @latex_headers<<='\setmonofont{Monaco}'

# Use colors
@latex_headers<<='\usepackage{color}
                \definecolor{italiccolor}{rgb}{0.6,0.6,0.6}
                \definecolor{boxcolor}{rgb}{0.96,0.96,0.96}'

# Make italic and emphasis text gray
@latex_headers<<='\renewcommand{\textit}[1]{\textcolor{italiccolor}{\it #1}}
                \renewcommand{\emph}[1]{\textcolor{italiccolor}{\em #1}}'

# change the template file in case latex_headers is not enough 
# Remember to not remove lines begining by %%#
# look at include/template.tex for example
@template_file="include/cv_template.tex"


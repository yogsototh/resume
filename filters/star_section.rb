class StarSection
    def run (content)
        content.gsub(/\\section/,'\section*').gsub(/\\subsection/,'\subsection*').gsub('\begin{description}','\begin{description}[font=\color{italiccolor}\normalfont\it]').gsub(/(\d|\/)+\s*\$\\rightarrow\$\{\}(\s*(\d|\/)+)?/) do |m|
            "\{\\footnotesize #{m}\}"
        end
    end
end

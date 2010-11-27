class StarSection
    def run (content)
        content.gsub(/\\section/,'\section*').gsub(/\\subsection/,'\subsection*').gsub('\begin{description}','\begin{description}[font=\color{italiccolor}\normalfont\it]')
    end
end

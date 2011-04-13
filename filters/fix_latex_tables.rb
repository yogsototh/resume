class FixLatexTables
    def run (content)
        content.gsub(/\\begin\{tabular\}\{/) do
            "\\begin{tabular*}{\\textwidth}\{\@\{\\extracolsep{\\fill\}\}"
        end.gsub(/\\end\{tabular\}/) do
            "\\end{tabular*}"
        end
    end
end

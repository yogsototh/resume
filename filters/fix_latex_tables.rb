class FixLatexTables
    def run (content)
        content.gsub(/\\begin\{tabular\}\{/) do
            "\\begin{tabular*}{\\textwidth}\{\@\{\\extracolsep{\\fill\}\}"
        end.gsub(/\\end\{tabular\}/) do
            "\\end{tabular*}"
        end.gsub('{longtable}{|l|l|}') do
            '{longtable}{p{1.5in}p{3.5in}}'
        end.gsub(/\\begin\{longtable\}(.|\n|\r)*?\\end\{longtable\}/m) do
            $&.gsub('\hline','')
        end
    end
end

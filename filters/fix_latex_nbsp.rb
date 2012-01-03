class FixLatexNbsp
    def run(content)
        content.gsub(/\\nolinebreak\{\}/,'~')
    end
end

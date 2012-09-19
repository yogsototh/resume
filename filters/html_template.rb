require 'date'
class HTMLTemplate
    attr_accessor :template
    attr_accessor :title
    attr_accessor :subtitle
    attr_accessor :author
    attr_accessor :subsite
    attr_accessor :nextURL
    attr_accessor :prevURL
    attr_accessor :homeURL
    attr_accessor :html_headers
    attr_accessor :prefix
    def run (content)
        res=File.read(@template)
        if @subsite
            @prefix=%{/#{@subsite}/}
        else
            @prefix=""
        end
        res.gsub(/<!-- Content -->/) do
            content
        end.gsub(/<!-- Title -->/) do
            @title
        end.gsub(/<!-- Date -->/) do
            Date.today.to_s
        end.gsub(/<!-- Subtitle -->/) do
            @subtitle
        end.gsub(/<!-- Author -->/) do
            @author
        end.gsub(/SUBSITEPREFIX\//) do
            @prefix
        end.gsub(%{/NEXT_URL/}) do
            @prefix+@nextURL
        end.gsub(%{<!-- NEXT_LINK -->}) do
            if @nextURL == '#'
                %{<a class="disable" href="#{@nextURL}">next&nbsp;<span class="nicer">»</span></a>}
            else
                %{<a href="#{@prefix}#{@nextURL}">next&nbsp;<span class="nicer">»</span></a>}
            end
        end.gsub(%{/PREV_URL/}) do
            @prefix+@prevURL
        end.gsub(%{<!-- PREV_LINK -->}) do
            if @prevURL == '#'
                %{<a class="disable" href="#{@prevURL}">prev&nbsp;<span class="nicer">»</span></a>}
            else
                %{<a href="#{@prefix}#{@prevURL}"><span class="nicer">«</span>&nbsp;prev</a>}
            end
        end.gsub(%{/HOME_URL/}) do
            @prefix+@homeURL
        end.gsub(%{<!-- HTML HEADERS -->}) do
            @html_headers
        end.gsub(/(\d|\/)+\s*&rarr;(\s*(\d|\/)+)?/) do |m|
            %{<span style="font-size:.5em">#{m}</span>}
        end
    end
end

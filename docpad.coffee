# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
    templateData:
        site:
            title: "Tokimo Labs"
            url: "http://tokimo.net"
            description: """
            		
            		"""
            keywords: """
            		software development, mobile development, innovation, web services
            		"""


        getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title

    collections:
        pages: -> 
            @getCollection("html").findAllLive({isPage:true}).on "add", (model) -> model.setMetaDefaults({layout:"default"})

    plugins:
        ghpages:
            deployRemote: 'target'
            deployBranch: 'master'
}

# Export the DocPad Configuration
module.exports = docpadConfig

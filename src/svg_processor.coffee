
uuid = require 'node-uuid'
markdownItGraph = require './md_graph'

svgProcessor = (tokens, graph_template, error_template) ->
  register: (mdInstance, postProcessors) ->
    markdownItGraph(tokens).register mdInstance, (graphStr) ->
      try
        id = "svg-" + uuid.v4()
        postProcessors.registerElemenbById id, (elem, done) ->
            elem.innerHTML = graphStr
            elem.style.height = elem.style.height #TODO: add option to set the height

            done()
        return graph_template id: id

      catch e
        return error_template error: e

    return null

module.exports = svgProcessor

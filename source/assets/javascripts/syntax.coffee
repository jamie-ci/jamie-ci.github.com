# There are certain formatters and lexers that do not exist in pygments,
# so we will highlight them with javascript.

class Syntax
  @highlight: ->
    _yaml()

  _yaml = ->
    $('div.highlight pre span.p-Indicator').each (index, item) ->
      unless $(item).prev().hasClass('p-Indicator')
        $(item).prev().addClass('key')

@Syntax = Syntax

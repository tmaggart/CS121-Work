myUI <- bootstrapPage(
  div(class='jumbotron masthead',
      h1('The Title of My Page'),
      p('This will be the every polite introduction to my page')
    ),
  div(class='row span12',
    div(class='span4',
        h3('In the first block')
        ),
    div(class='span3',
        h4('In the block'),
        h2('Big Brother')
        )
    )
  )

dummyServer <- function(input,outut){}
runApp(list(ui=myUI, server=dummyServer))
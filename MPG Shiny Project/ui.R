library(shiny)
dat <- mtcars

fluidPage(pageWithSidebar(
        headerPanel("Measure MPG vs. Various Predictors"),
        sidebarPanel(
                h3('Select a Predictor'),
                p('Make your choice from the dropdown below.'),
                selectInput("dropdown", label = 'Predictors',choices = list("Displacement" = "disp", "Weight" = 'wt', "HP" = 'hp', "Acceleration" = 'qsec'), selected = NULL, multiple = FALSE, selectize = TRUE)
        ),
        mainPanel(
                plotOutput('carPlot'),
                p('Note: The data used for these plots was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973–74 models).')

        )
))

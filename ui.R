library(shiny)
shinyUI(fluidPage(
  headerPanel("Text input shiny widget"),
  sidebarLayout(
    sidebarPanel(
      textInput("projcode","Enter project code"),
      textInput("projName","Enter name of project"),
      textInput("tech","What technology are you using?"),
      radioButtons("loc","What is your location",choices = c("off-site","on-site"),selected = "on-site",inline = T ),
      sliderInput("ndayspent","No. of days spent",1,100,value = c(10,20),step = 5),
      selectInput("department","What is your Department",choices=c("Marketing","Finance","Sales","IT"),multiple = T)
    ),
    mainPanel(
      textOutput("project_code"),
      textOutput("project_name"),
      textOutput("tech_used"),
      textOutput("location"),
      textOutput("no_of_days_spent"),
      textOutput("department")
    )
  )
))
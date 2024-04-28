# Load R packages
library(shiny)
library(shinythemes)

# Define UI
ui <- fluidPage(theme = shinytheme("yeti"),
                navbarPage(
                  "Chris Hancock",
                  tabPanel("Home",
                           fluidRow(
                             sidebarPanel(
                               img(src = 'chris_headshot.png',width="100%"),
                               a(img(src = 'github.png',width="100%"),href="https://github.com/clhancock/"),
                               a(img(src = 'linkedin.png',width="100%"),href="https://www.linkedin.com/in/clhancock/")
                               ),
                             mainPanel(
                               h1(HTML("<b>Chris Hancock</b>")),
                               h4("PhD Canidate"),
                               h4("Northern Arizona University"),
                               h4("School of Earth and Sustainability"),
                               h3(HTML("<b>About:</b>")),
                               h4("I am a climate and data scientist passionate about using data to understand and quantify changes to Earth’s environment. My current research integrates information from paleoclimate proxies with climate model simulations to reconstruct the response of regional hydroclimate variability to global climate change in the geologic past. To do this, I compile and manage large multi-proxy datasets and develop opensource software to utilize analytical techniques such as timeseries analysis, geospatial statistics, and data assimilation. These results provide insight into modern climate dynamics and the impacts of current climate change on the global hydrological cycle.")
                               ),verbatimTextOutput("txtout")
                             ),
                          ),
                  tabPanel("Research",
                           fluidRow(mainPanel(h3(HTML("<b>Publications</b>")))),
                           fluidRow(
                             sidebarPanel(img(src = '2023_Hancock.png',width="100%"),width=3),
                             mainPanel(h5(HTML("<b>Hancock, C.</b>, McKay, N. P., Erb, M. P., Kaufman, D. K., Routson, C., Ivanovic, R. F., Gregoire, L. J., and Valdes, P.: Global synthesis of regional Holocene hydroclimate variability using proxy and model data, Paleoceanography and Paleoclimatology, https://doi.org/10.1029/2022PA004597, 2023.")),
                                       h5(" "),
                                       h5(a("Article",href="https://doi.org/10.1029/2022PA004597")),
                                       h5(a("GitHub",href="https://github.com/clhancock/HoloceneHydroclimate"))
                             ,width=9),verbatimTextOutput("txtout")
                           ),
                           fluidRow(
                             sidebarPanel(img(src = '2022_erb.png',width="100%"),width=3),
                             mainPanel(h5(HTML("Erb, M. P., McKay, N. P., Steiger, N., Dee, S., <b>Hancock, C.</b>, Ivanovic, R. F., Gregoire, L. J., and Valdes, P.: Reconstructing Holocene temperatures in time and space using paleoclimate data assimilation, Clim. Past, 18, 2599–2629, https://doi.org/10.5194/cp-18-2599-2022, 2022.")), 
                                       h5(" "),
                                       h5(a("Article",href="https://doi.org/10.5194/cp-18-2599-2022")),
                                       h5(a("GitHub",href="https://github.com/Holocene-Reconstruction/Holocene-code"))
                              ,width=9), verbatimTextOutput("txtout")
                           )
                           ), # mainPanel),
                  tabPanel("CV", 
                           tags$iframe(style="height:600px; width:100%; scrolling=yes", 
                                       src="CV_ChrisHancock.pdf"))
                  
                  
                ) # navbarPage
) # fluidPage

# Define server function  
server <- function(input, output, session) {
  
  output$txtout <- renderText({
    paste( input$txt1, input$txt2, sep = " " )
  })
}

# Create Shiny object
shinyApp(ui = ui, server = server)

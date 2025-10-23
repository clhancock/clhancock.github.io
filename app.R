library(shiny)
library(shinythemes)
library(leaflet)
cities <- data.frame(
  name = c(
           "Born and raised in Massachussetts",
           "BS Geological Sciences - George Washington University",
           "MA Geography - University of Denver",
           "PhD Earth Science & Environmental Sustainability - Northern Arizona University",
           "Postdoctoral Researcher - Rice University"
           ),
  lat = c(42.3601, 38.9072, 39.7392, 35.1983, 29.71939),
  lng = c(-71.0589, -77.0369, -104.9903, -111.6513, -95.40231)
)
aboutMe<-'I am a climate and data scientist using information from observational networks, paleoclimate archives, and climate model simulations to reconstruct and project the impacts of global climate change on regional hydroclimate variability. To do this, I develop and manage large datasets and utilize analytical techniques such as timeseries analysis, geospatial statistics, and data assimilation. These results provide insight into modern climate dynamics and the impacts of current climate change on the global hydrological cycle.'
ui <- fluidPage(theme = shinytheme("flatly"),
                navbarPage(
                  "Chris Hancock",
                  tabPanel(
                    "Home",
                    # First row: two sidebars
                    fluidRow(
                      column(
                        width = 8,  # ~70% of 12-column grid
                        h1(HTML("<b>Chris Hancock, PhD</b>")),
                        h3("Postdoctoral Researcher, Rice University"),
                        h3("Department of Earth, Environmental and Planetary Sciences"),
                        column(2, a(img(src = 'linkedin.png', width = "100%"), href = "https://www.linkedin.com/in/clhancock/")),
                        column(2, a(img(src = 'github2.png', width = "100%"), href = "https://github.com/clhancock/")),
                        column(9,h4(aboutMe))
                        ),
                      column(
                        width = 4,  # ~30% of 12-column grid
                        img(src = 'chris_headshot.png', width = "100%"),
                      ),
                      # column(
                      #   width = 2,  # ~30% of 12-column grid
                      #   img(src = 'Untitled4.jpg', width = "100%"),
                      # ),
                    ),
                    # Second row: main panel spanning 100%
                    fluidRow(
                      column(
                        width = 12,
                        leafletOutput("usmap", height = 400),
                        #img(src = 'Untitled1.jpg', width = "100%"),
                        #img(src = 'Untitled2.jpg', width = "100%"),
                        img(src = 'Untitled3.jpg', width = "100%"),


                             )
                           )
                  ),
                  # tabPanel("Map",
                  #            fluidRow(
                  #              column(12,
                  #                     leafletOutput("usmap", height = 600)
                  #              )
                  #            )
                  #),
                  tabPanel("Research",
                           fluidRow(
                             sidebarPanel(
                               tags$img(src = 'MRB_Hancock.png', width = "100%", style = "cursor:pointer;",
                                        onclick = "Shiny.setInputValue('show_image', 'MRB_Hancock.png', {priority: 'event'})"),
                               width = 2
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C L..</b>, Dee S. G., Haider, M. R., Murphy, K., Doss-Gollin, J., Lehner, F., Muñoz, S. E. (in review). Robust 21st century hydrological trends in the Mississippi River basin from CMIP6: west-gets-drier, east-gets-wetter, Journal of Climate.")),
                               h5(" "),
                               #h5(a("Article", href = "https://doi.org/10.5194/cp-20-2663-2024")),
                               #h5(a("GitHub", href = "https://linked.earth/actR/")),
                             ),
                             width = 10
                           ),
                           fluidRow(
                             sidebarPanel(
                               tags$img(src = 'RAW_Hancock2.png', width = "100%", style = "cursor:pointer;",
                                        onclick = "Shiny.setInputValue('show_image', 'RAW_Hancock2.png', {priority: 'event'})"),
                               width = 2
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C L..</b>, McKay, N. P., Erb, M. P., Kaufman, D. S., Thomas, E. K. (in review). Arctic warming during the past century was more widespread than the largest millennial-scale events following the Last Glacial Maximum, PNAS.")),
                               h5(" "),
                               #h5(a("Article", href = "https://doi.org/10.5194/cp-20-2663-2024")),
                               h5(a("GitHub", href = "https://linked.earth/actR")),
                             ),
                             width = 10
                           ),
                           fluidRow(
                             sidebarPanel(
                               tags$img(src = '2024_Hancock.png', width = "100%", style = "cursor:pointer;",
                                        onclick = "Shiny.setInputValue('show_image', '2024_Hancock.png', {priority: 'event'})"),
                               width = 2
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C L..</b>, Erb, M. P., McKay, N. P., Dee, S. G., and Ivanovic, R. F. (2023). A global Data Assimilation of Moisture Patterns from 21 000–0 BP (DAMP-21ka) using lake level proxy records, Climate of the Past, 20, 2663–2684. https://doi.org/10.5194/cp-20-2663-2024")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.5194/cp-20-2663-2024")),
                               h5(a("GitHub", href = "https://github.com/clhancock/DAMP21ka")),
                             ),
                             width = 10
                           ),
                           fluidRow(
                             sidebarPanel(
                               tags$img(src = '2024_McKay.png', width = "100%", style = "cursor:pointer;",
                                        onclick = "Shiny.setInputValue('show_image', '2024_McKay.png', {priority: 'event'})"),
                               width = 2
                             ),
                             mainPanel(
                               h5(HTML("McKay, N. P., Kaufman, D. K., Arcusa, S., Kolus, H., Edge, D., Erb, M. P., <b>Hancock, C. L.</b>, Routson, C. R., Żarczyński, M., Marshall, L. P., Roberts, G., Telles, F. (2024). The 4.2 ka event is not remarkable in the context of Holocene climate variability. Nature Communications, 15, 6555. https://doi.org/10.1038/s41467-024-50886-w")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.1038/s41467-024-50886-w")),
                               h5(a("Media", href = "https://news.nau.edu/4-2-ka-research/")),
                               h5(a("GitHub", href = "https://github.com/nickmckay/HoloceneAbruptChange"))
                             ),
                             width = 10
                           ),
                           fluidRow(
                             sidebarPanel(
                               tags$img(src = '2023_Hancock.png', width = "100%", style = "cursor:pointer;",
                                        onclick = "Shiny.setInputValue('show_image', '2023_Hancock.png', {priority: 'event'})"),
                               width = 2
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C. L.</b>, McKay, N. P., Erb, M. P., Kaufman, D. K., Routson, C., Ivanovic, R. F., Gregoire, L. J., and Valdes, P.: Global synthesis of regional Holocene hydroclimate variability using proxy and model data, Paleoceanography and Paleoclimatology, https://doi.org/10.1029/2022PA004597, 2023.")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.1029/2022PA004597")),
                               h5(a("GitHub", href = "https://github.com/clhancock/HoloceneHydroclimate"))
                             ),
                             width = 10
                           ),
                           fluidRow(
                             sidebarPanel(
                               tags$img(src = '2022_erb.png', width = "100%", style = "cursor:pointer;",
                                        onclick = "Shiny.setInputValue('show_image', '2022_erb.png', {priority: 'event'})"),
                               width = 2
                             ),
                             mainPanel(
                               h5(HTML("Erb, M. P., McKay, N. P., Steiger, N., Dee, S., <b>Hancock, C.</b>, Ivanovic, R. F., Gregoire, L. J., and Valdes, P.: Reconstructing Holocene temperatures in time and space using paleoclimate data assimilation, Clim. Past, 18, 2599–2629, https://doi.org/10.5194/cp-18-2599-2022, 2022.")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.5194/cp-18-2599-2022")),
                               h5(a("GitHub", href = "https://github.com/Holocene-Reconstruction/Holocene-code"))
                             ),
                             width = 10
                           )
                  ),
                  tabPanel("CV",
                           tags$iframe(style = "height:600px; width:100%; scrolling = yes",
                                       src = "CV_ChrisHancock.pdf")
                  )
                )
)
server <- function(input, output, session) {

  output$usmap <- renderLeaflet({
    leaflet(data = cities) %>%
      addTiles() %>%
      addProviderTiles(providers$CartoDB.Positron) %>%
      setView(lng = -95, lat = 39, zoom = 4) %>%  # Center on the US
      addMarkers(~lng, ~lat, popup = ~name)
  })

  observeEvent(input$show_image, {
    showModal(modalDialog(
      title = NULL,
      easyClose = TRUE,
      footer = NULL,
      tags$img(src = input$show_image, width = "100%")
    ))
  })
}

shinyApp(ui = ui, server = server)

# rsconnect::setAccountInfo(
#   name = "clhancock",
#   token = "6952AAC005ED22C7E76D1F587C002DE6",
#   secret = ""
# ) #log into shinyapps.io to find token and secret

#rsconnect::deployApp('/Users/christopherhancock/Library/CloudStorage/Box-Box/Personal/clhancock/')


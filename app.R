library(shiny)
library(shinythemes)

ui <- fluidPage(theme = shinytheme("yeti"),
                navbarPage(
                  "Chris Hancock",
                  tabPanel("Home",
                           fluidRow(
                             sidebarPanel(
                               img(src = 'chris_headshot.png', width = "100%"),
                               a(img(src = 'github.png', width = "100%"), href = "https://github.com/clhancock/"),
                               a(img(src = 'linkedin.png', width = "100%"), href = "https://www.linkedin.com/in/clhancock/")
                             ),
                             mainPanel(
                               h1(HTML("<b>Chris Hancock, PhD</b>")),
                               h4("Postdoctoral Researcher"),
                               h4("Rice University"),
                               h4("Earth, Environmental and Planetary Sciences"),
                               h3(HTML("<b>About:</b>")),
                               h4("I am a climate and data scientist passionate about using data to understand Earth’s changing environment. My current research integrates information from paleoclimate proxies with climate model simulations to reconstruct regional hydroclimate variability in response to global climate change in the geologic past. To do this, I compile and manage large multi-proxy datasets and develop opensource software to utilize analytical techniques such as time-series analysis, geospatial statistics, and data assimilation. These results provide insight into modern climate dynamics and the impacts of current climate change on the global hydrological cycle.")
                             )
                           )
                  ),
                  tabPanel("Research",
                           fluidRow(
                             sidebarPanel(
                               img(src = 'MRB_Hancock.png', width = "100%"),
                               width = 3
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C L..</b>, Dee S. G., Haider, M. R., Murphy, K., Doss-Gollin, J., Lehner, F., Muñoz, S. E. (in review). Robust 21st century hydrological trends in the Mississippi River basin from CMIP6: west-gets-drier, east-gets-wetter, Journal of Climate.")),
                               h5(" "),
                               #h5(a("Article", href = "https://doi.org/10.5194/cp-20-2663-2024")),
                               h5(a("GitHub", href = "https://linked.earth/actR/")),
                             ),
                             width = 9
                           ),
                           fluidRow(
                             sidebarPanel(
                               img(src = 'RAW_Hancock2.png', width = "100%"),
                               width = 3
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C L..</b>, McKay, N. P., Erb, M. P., Kaufman, D. S., Thomas, E. K. (in review). Arctic warming during the past century was more widespread than the largest millennial-scale events following the Last Glacial Maximum, PNAS.")),
                               h5(" "),
                               #h5(a("Article", href = "https://doi.org/10.5194/cp-20-2663-2024")),
                               h5(a("GitHub", href = "https://linked.earth/actR")),
                             ),
                             width = 9
                           ),
                           fluidRow(
                             sidebarPanel(
                               img(src = '2024_Hancock.png', width = "100%"),
                               width = 3
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C L..</b>, Erb, M. P., McKay, N. P., Dee, S. G., and Ivanovic, R. F. (2023). A global Data Assimilation of Moisture Patterns from 21 000–0 BP (DAMP-21ka) using lake level proxy records, Climate of the Past, 20, 2663–2684. https://doi.org/10.5194/cp-20-2663-2024")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.5194/cp-20-2663-2024")),
                               h5(a("GitHub", href = "https://github.com/clhancock/DAMP21ka")),
                             ),
                             width = 9
                           ),
                           fluidRow(
                             sidebarPanel(
                               img(src = '2024_McKay.png', width = "100%"),
                               width = 3
                             ),
                             mainPanel(
                               h5(HTML("McKay, N. P., Kaufman, D. K., Arcusa, S., Kolus, H., Edge, D., Erb, M. P., <b>Hancock, C. L.</b>, Routson, C. R., Żarczyński, M., Marshall, L. P., Roberts, G., Telles, F. (2024). The 4.2 ka event is not remarkable in the context of Holocene climate variability. Nature Communications, 15, 6555. https://doi.org/10.1038/s41467-024-50886-w")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.1038/s41467-024-50886-w")),
                               h5(a("GitHub", href = "https://github.com/nickmckay/HoloceneAbruptChange")),
                               h5(a("Media", href = "https://news.nau.edu/4-2-ka-research/"))
                             ),
                             width = 9
                           ),
                           fluidRow(
                             sidebarPanel(
                               img(src = '2023_Hancock.png', width = "100%"),
                               width = 3
                             ),
                             mainPanel(
                               h5(HTML("<b>Hancock, C. L.</b>, McKay, N. P., Erb, M. P., Kaufman, D. K., Routson, C., Ivanovic, R. F., Gregoire, L. J., and Valdes, P.: Global synthesis of regional Holocene hydroclimate variability using proxy and model data, Paleoceanography and Paleoclimatology, https://doi.org/10.1029/2022PA004597, 2023.")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.1029/2022PA004597")),
                               h5(a("GitHub", href = "https://github.com/clhancock/HoloceneHydroclimate"))
                             ),
                             width = 9
                           ),
                           fluidRow(
                             sidebarPanel(
                               img(src = '2022_erb.png', width = "100%"),
                               width = 3
                             ),
                             mainPanel(
                               h5(HTML("Erb, M. P., McKay, N. P., Steiger, N., Dee, S., <b>Hancock, C.</b>, Ivanovic, R. F., Gregoire, L. J., and Valdes, P.: Reconstructing Holocene temperatures in time and space using paleoclimate data assimilation, Clim. Past, 18, 2599–2629, https://doi.org/10.5194/cp-18-2599-2022, 2022.")),
                               h5(" "),
                               h5(a("Article", href = "https://doi.org/10.5194/cp-18-2599-2022")),
                               h5(a("GitHub", href = "https://github.com/Holocene-Reconstruction/Holocene-code"))
                             ),
                             width = 9
                           )
                  ),
                  tabPanel("CV",
                           tags$iframe(style = "height:600px; width:100%; scrolling = yes",
                                       src = "CV_ChrisHancock.pdf")
                  )
                )
)
server <- function(input, output, session) {}

shinyApp(ui = ui, server = server)


#rsconnect::deployApp('/Users/christopherhancock/Library/CloudStorage/Box-Box/Personal/clhancock/Website/')

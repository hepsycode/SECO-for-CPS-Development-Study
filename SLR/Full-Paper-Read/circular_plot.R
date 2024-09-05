install.packages("circlize")
install.packages("RColorBrewer")
install.packages("extrafont")

library(circlize)
library(RColorBrewer)
library(extrafont)

#############################################

getwd()

# R program to create adjacency matrix (Challenges using Topic Analysis)
# adjacency_matrix <- matrix(
#   
#   # Taking sequence of elements  
#   c(0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, # Architecture
#     5, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, # Model-Based \n System Engineering
#     0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 5, # Requirements \n Engineering
#     ############################################
#     0, 0, 0, 0, 5, 1, 0, 0, 0, 1, 0, 0, 0, 0, # Reliability 
#     0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, # Safety & Security 
#     0, 0, 0, 1, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, # Longevity & \n Maintainability
#     5, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, #  Scalability
#     0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, # Adaptability
#     ############################################
#     0, 0, 0, 0, 0, 1, 1, 0, 0, 5, 0, 0, 0, 0, # Continuous System \n & Software Engineering
#     0, 0, 0, 1, 1, 0, 0, 0, 5, 0, 0, 0, 0, 0, # Testing
#     ############################################
#     0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 5, 0, # Data
#     5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, # Interoperability
#     ############################################
#     0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 5, 0, 0, 0, # Intelligence & \n Automation
#     0, 0, 5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 # Stakeholder \n Engagement
#     ), 
#   
#   # No of rows
#   nrow = 14,   
#   
#   # No of columns
#   ncol = 14,         
#   
#   # By default matrices are in column-wise order
#   # So this parameter decides how to arrange the matrix
#   byrow = TRUE
# )

# R program to create adjacency matrix based on the primary studies
adjacency_matrix <- matrix(
  
  # # Taking sequence of elements based on the provided table (ALL) 
  # c(
  #   0, 3, 2, 0, 2, 0, 0, 1, 2, 2, 0, 1, 1, 1,  # Architecture
  #   3, 0, 3, 1, 3, 1, 1, 3, 3, 3, 1, 3, 2, 2,  # Model-Based Systems Engineering
  #   2, 3, 0, 1, 2, 1, 1, 2, 1, 2, 1, 2, 0, 2,  # Requirements Engineering
  #   0, 1, 1, 0, 1, 0, 1, 2, 0, 1, 1, 0, 1, 1,  # Reliability
  #   2, 3, 2, 1, 0, 0, 0, 2, 2, 2, 5, 2, 4, 4,  # Safety & Security
  #   0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 2, 0, 0,  # Longevity & Manteinability
  #   0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0,  # Scalability
  #   1, 3, 2, 2, 2, 0, 1, 0, 0, 2, 1, 2, 2, 2,  # Adaptability
  #   2, 3, 1, 0, 2, 1, 1, 0, 0, 1, 1, 1, 2, 0,  # Continuous Software & System Engineering
  #   2, 3, 2, 1, 2, 0, 0, 2, 1, 0, 1, 1, 0, 2,  # Testing
  #   0, 1, 1, 1, 5, 0, 0, 1, 1, 1, 0, 2, 4, 3,  # Data
  #   1, 3, 2, 0, 2, 2, 1, 2, 1, 1, 2, 0, 3, 1,  # Interoperability
  #   1, 2, 0, 1, 4, 0, 1, 2, 2, 0, 4, 3, 0, 1,  # Intelligence & Automation
  #   1, 2, 2, 1, 4, 0, 0, 2, 0, 2, 3, 1, 1, 0   # Stakeholder Engagement
  # ),
  
  # # Taking sequence of elements based on the provided table (ALL Diagonal Matrix) 
  c(0, 3, 2, 0, 2, 0, 0, 1, 2, 2, 0, 1, 1, 1,  # Architecture
    0, 0, 3, 1, 3, 1, 1, 3, 3, 3, 1, 3, 2, 2,  # Model-Based Systems Engineering
    0, 0, 0, 1, 2, 1, 1, 2, 1, 2, 1, 2, 0, 2,  # Requirements Engineering
    0, 0, 0, 0, 1, 0, 1, 2, 0, 1, 1, 0, 1, 1,  # Reliability
    0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 5, 2, 4, 4,  # Safety & Security
    0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 2, 0, 0,  # Longevity & Manteinability
    0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0,  # Scalability
    0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2, 2, 2,  # Adaptability
    0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 2, 0,  # Continuous Software & System Engineering
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 2,  # Testing
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 3,  # Data
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1,  # Interoperability
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,  # Intelligence & Automation
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   # Stakeholder Engagement
  ),
  
  # Taking sequence of elements based on the provided table (>1)
  # c(0, 3, 2, 0, 2, 0, 0, 0, 2, 2, 0, 0, 0, 0,  # Architecture
  #   3, 0, 3, 0, 3, 0, 0, 3, 3, 3, 0, 3, 2, 2,  # Model-Based Systems Engineering
  #   2, 3, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 2,  # Requirements Engineering
  #   0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0,  # Reliability
  #   2, 3, 2, 0, 0, 0, 0, 2, 2, 2, 5, 2, 4, 4,  # Safety & Security
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0,  # Longevity & Manteinability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Scalability
  #   0, 3, 2, 2, 2, 0, 0, 0, 0, 2, 0, 2, 2, 2,  # Adaptability
  #   2, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0,  # Continuous Software & System Engineering
  #   2, 3, 2, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 2,  # Testing
  #   0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 2, 4, 3,  # Data
  #   0, 3, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 3, 0,  # Interoperability
  #   0, 2, 0, 0, 4, 0, 0, 2, 2, 0, 4, 3, 0, 0,  # Intelligence & Automation
  #   0, 2, 2, 0, 4, 0, 0, 2, 0, 2, 3, 0, 0, 0   # Stakeholder Engagement
  # ),
  
  # Taking sequence of elements based on the provided table (>1 Diagonal Matrix) 
  # c(0, 3, 2, 0, 2, 0, 0, 0, 2, 2, 0, 0, 0, 0,  # Architecture
  #   0, 0, 3, 0, 3, 0, 0, 3, 3, 3, 0, 3, 2, 2,  # Model-Based Systems Engineering
  #   0, 0, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 2,  # Requirements Engineering
  #   0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0,  # Reliability
  #   0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 5, 2, 4, 4,  # Safety & Security
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0,  # Longevity & Manteinability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Scalability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 2, 2,  # Adaptability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0,  # Continuous Software & System Engineering
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,  # Testing
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 3,  # Data
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0,  # Interoperability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Intelligence & Automation
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   # Stakeholder Engagement
  # ),
  
  # # Taking sequence of elements based on the provided table (>2)
  # c(0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Architecture
  #   3, 0, 3, 0, 3, 0, 0, 3, 3, 3, 0, 3, 0, 0,  # Model-Based Systems Engineering
  #   0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Requirements Engineering
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Reliability
  #   0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 4, 4,  # Safety & Security
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Longevity & Manteinability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Scalability
  #   0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Adaptability
  #   0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Continuous Software & System Engineering
  #   0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Testing
  #   0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 4, 3,  # Data
  #   0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0,  # Interoperability
  #   0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 4, 3, 0, 0,  # Intelligence & Automation
  #   0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 3, 0, 0, 0   # Stakeholder Engagement
  # ),
  
  # # Taking sequence of elements based on the provided table (>2 Diagonal Matrix)
  # c(0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Architecture
  #   0, 0, 3, 0, 3, 0, 0, 3, 3, 3, 0, 3, 0, 0,  # Model-Based Systems Engineering
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Requirements Engineering
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Reliability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 4, 4,  # Safety & Security
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Longevity & Manteinability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Scalability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Adaptability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Continuous Software & System Engineering
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Testing
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3,  # Data
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0,  # Interoperability
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # Intelligence & Automation
  #   0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   # Stakeholder Engagement
  # ),

  # Number of rows
  nrow = 14,   
  
  # Number of columns
  ncol = 14,         
  
  # Arrange the matrix row-wise
  byrow = TRUE
)

# Define row/column names
rownames(adjacency_matrix) <- c("Architecture","Model-Based \n System Engineering","Requirements \n Engineering",
                                "Reliability","Safety & Security","Longevity \n & Maintainability","Scalability","Adaptability",
                                "Continuous System \n & Software \n Engineering","Testing",
                                "Data","Interoperability",
                                "Intelligence & \n Automation",
                                "Stakeholder \n Engagement")

colnames(adjacency_matrix) <- rownames(adjacency_matrix) # Same names for rows and columns

print(adjacency_matrix)

# Assign specific colors for each sector (optional)
categories <- rownames(adjacency_matrix)

# Use a softer color palette
palette_soft <- brewer.pal(8, "Accent") # Choose a "Pastel1" palette with 9 colors
palette_soft <- colorRampPalette(palette_soft)(14)  # Expand to 14 colors
#grid_colors <- setNames(rainbow(14), categories)
grid_colors <- setNames(palette_soft, categories)

# Define a vector of values to determine the width of sectors
sector_values <- c(10, 6, 12, 7, 7,11, 7, 7, 3, 2, 11, 2, 4, 2)

# Normalize sector values
sector_widths <- sector_values / sum(sector_values)

# Specify the output file in PNG format with 300 dpi
png("challenges_circular_plot_primary_paper.png", width = 10, height = 10, units = "in", res = 300)

# Change the font (optional) using par or extrafont
par(family = "Arial")  # You can change the font to one of your choice

# Create the circular plot
circos.clear() # Clear any previous circular plots

# Set circular parameters with normalized sector widths
# circos.par("track.height" = 0.1, "track.margin" = c(0.05, 0.0))
circos.par("cell.padding" = c(0.0, 0.0, 0.0, 0.0), "track.height" = 0.05)
# circos.par("canvas.xlim" = c(-1.5, 1.5), "canvas.ylim" = c(-1.5, 1.5), "track.height" = 0.05)

# Initialize the circular plot with sectors of proportional widths
circos.initialize(factors = categories, xlim = cbind(rep(0, 14), sector_widths * 100))

chordDiagram(adjacency_matrix, 
             annotationTrack = "grid", 
             preAllocateTracks = 1, 
             directional = 2,
             direction.type = c("arrows", "diffHeight"), # Add arrows
             # link.arr.type = "big.arrow",  # Type of arrows
             transparency = 0.25,
             grid.col = grid_colors) # Use the defined colors with names

# Add labels to the categories
circos.trackPlotRegion(track.index = 1, 
                       ylim = c(5, 10),
                       panel.fun = function(x, y) {
                         sector.index <- get.cell.meta.data("sector.index")
                         circos.text(CELL_META$xcenter, CELL_META$ylim[1] + 0.25, sector.index, 
                                     facing = "inside", 
                                     niceFacing = TRUE, adj = c(0.5, 0), cex = 1.0)
                       }, bg.border = NA)

# Finalize and close the PNG device
dev.off()

# Create a new outer track to highlight the groups
#circos.par("track.margin" = c(0.05, 0.15))  # Increase the distance between the outer and inner circle
#circos.trackPlotRegion(factors = categories, ylim = c(10, 15), track.height = 0.1, bg.border = NA)  # Create an empty outer track

# Add the outer circle to group categories
#highlight.sector(c("Interoperability", "Requirements \n Engineering", "Data"), 
                 #track.index = 1, col = "#FF9999", border = "black", lwd = 2, 
                 #text = "Group 1", cex = 1, text.col = "black", niceFacing = TRUE)

#highlight.sector(c("Architecture", "Stakeholder \n Engagement", "Testing"), 
                 #track.index = 1, col = "#99CCFF", border = "black", lwd = 2, 
                 #text = "Group 2", cex = 1, text.col = "black", niceFacing = TRUE)

#highlight.sector(c("Safety & Security", "Longevity & Maintainability"), 
                 #track.index = 1, col = "#99FF99", border = "black", lwd = 2, 
                 #text = "Group 3", cex = 1, text.col = "black", niceFacing = TRUE)

# Finalize the plot
circos.clear()


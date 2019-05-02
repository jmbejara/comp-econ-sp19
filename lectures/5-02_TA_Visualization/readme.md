Lecture 5/1
===========

* To talk about:
    * Matplotlib vs Pyplot API (Matplotlib API is an object oriented approach to building visualizations. Pyplot is a procedural API that mostly mimics Matlab)
    * Matplotlib, Seaborn, plotnine, plotly
        * plotnine is a Python clone of R's `ggplot2` library. 
* Go through the notebook on declarative graphics, [declarative_visualization_overview.ipynb](./.declarative_visualization_overview.ipynb), to practice plotting in Pandas, plotnine, and plotly.
* Other notebooks on building interactive demonstrations using widgets are provided if you're interested.

ggplot2 is very popular. On its [website](https://ggplot2.tidyverse.org/), it is described as follows,:

> ggplot2 is a system for declaratively creating graphics, based on The Grammar of Graphics. You provide the data, tell ggplot2 how to map variables to aesthetics, what graphical primitives to use, and it takes care of the details.

This is in contrast to, for example, pyplot. In pyplot, you write code that builds your plot, focusing on the details of building the plot. In a declarative system, you instead tell Python what kind of plot you want to see and the system builds the plot. 


Be sure to at least skim through the following on your own:

 * [PDSH: "Visualization with Matplotlib"](https://jakevdp.github.io/PythonDataScienceHandbook/04.00-introduction-to-matplotlib.html)
 * [PDSH: "Simple Line Plots"](https://jakevdp.github.io/PythonDataScienceHandbook/04.01-simple-line-plots.html)
 * [PDSH: "Simple Scatter Plots"](https://jakevdp.github.io/PythonDataScienceHandbook/04.02-simple-scatter-plots.html)
 * [PDSH: "Visualizing Errors"](https://jakevdp.github.io/PythonDataScienceHandbook/04.03-errorbars.html)
 * [PDSH: "Density and Contour Plots"](https://jakevdp.github.io/PythonDataScienceHandbook/04.04-density-and-contour-plots.html)
 * [PDSH: "Histograms, Binnings, and Density"](https://jakevdp.github.io/PythonDataScienceHandbook/04.05-histograms-and-binnings.html)
 * [PDSH: "Customizing Plot Legends"](https://jakevdp.github.io/PythonDataScienceHandbook/04.06-customizing-legends.html)
 * [PDSH: "Customizing Colorbars"](https://jakevdp.github.io/PythonDataScienceHandbook/04.07-customizing-colorbars.html)
 * [PDSH: "Multiple Subplots"](https://jakevdp.github.io/PythonDataScienceHandbook/04.08-multiple-subplots.html)
 * [PDSH: "Text and Annotation"](https://jakevdp.github.io/PythonDataScienceHandbook/04.09-text-and-annotation.html)
 * [PDSH: "Visualization with Seaborn"](https://jakevdp.github.io/PythonDataScienceHandbook/04.14-visualization-with-seaborn.html)
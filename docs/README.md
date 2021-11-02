![logo](/media/logo.png)

Eigendata is a **low-code tool for data analysis designed for people that want to get things done**. 

The main component is the **magic formula bar**, rendered below empty cells in the notebook, it provides fast acess to the most common data transformations without loosing the flexibilit of using code.

You become more productive by :

1. **Googling less** of the most common data transformations
2. **Interacting with a useful UI**that ensure you understand the libraries and select the right input without typos. **All accessible through keyboard without the slowdown of point-and-click tools**
3. Keeping track of the current datasets, datatypes and shape at all times through the **data visualizer**



Besides these improvements, **Eigendata declutters and simplifies the JupyterLab interface**

1. All the menus that can be found through `⌘ ⇧ C` are removed from the UI for simplicity
2. Intuitive coda/notion like shortcuts for the sidebars `⌘ /` `⌘ \`
3. When you close a tab, the kernel is shut down 

All of these configurations can also be disabled through the advanced settings `⌘ ,`

# 🖥️ Installation

1. [Download](https://docs.conda.io/en/latest/miniconda.html) & install miniconda
2. <a href="files/environment.yaml" download="">Download conda environment configuration file</a>  in the downloads folder
3. Create a new environment with all dependencies 
   1. Open a terminal in the directory where you downloaded the file and run`conda env create -f eigendata-jlab3.yaml ` 



# ❓FAQ

### Magic Formula Bar is blank/does not appear

This can be due to an adblocker preventing Eigendata from loading the transformations (which are hosted on our servers). In case you are using *Adguard*, you will need to disable it to get Eigendata working. Alternatively, you can switch to a browser where you don't have an adblocker installed.


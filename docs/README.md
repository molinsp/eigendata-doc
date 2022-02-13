![logo](/media/logo.png ':size=900')

# 📖 Introduction

Product managers, business analysts, operations managers, and other non-technical personas often need to analyze data or complete repetitive tasks in the context of a business process. 

This is often done in spreadsheets in a way that is not scalable or robust. To overcome challenges found in spreadsheets, many have learned basic coding skills. 

But **for these "semi-technical" users, the cognitive overhead of remembering code syntax is often too high**, hampering their productivity.

**Eigendata empowers "semi-technical" users with a Python low-code tool that makes manipulating data as easy as spreadsheets, without any of the limitations**. 

1. You can easily do a quick and dirty analysis without having to deal with the overhead of remembering basic python syntax 
2. If you need to automate the process, you can easily schedule the sequence of python transformations 
3. If the process needs to be productionized by an engineer, the underlying code based on standard python packages can serve as an initial specification

# 💻 JupyterLab extension

**Eigendata is a [JupyterLab](https://jupyter.org/) extension** that includes

1. Formulabar: A low-code interface rendered below notebook cells, providing fast access to common data transformations with [Pandas](https://pandas.pydata.org/) (can be hidden/shown with `Ctrl + E`)
2. Data visualizer: Side-bar that lets you inspect the loaded dataframes



Loading a CSV file using the formula bar

<img src="https://raw.githubusercontent.com/molinsp/eigendata-doc/master/docs/media/eigendata_data_loading.gif" alt="logo" style="zoom:100%;" />



Finding data transformations using the formula bar

<img src="https://raw.githubusercontent.com/molinsp/eigendata-doc/master/docs/media/eigendata_search.gif" alt="logo" style="zoom:100%;" />



# 🛠 Installation

1. [Try online](https://cloud.eigendata.co/) (very easy)
2. Instal desktop version (easy)
   1. <a href="https://drive.google.com/file/d/1kJS_iR57bOgr1GDmjIOm62VLp-6zbfyL/view?usp=sharing" download="">Mac Installer</a>

3. Install as a python package (advanced)
   1. If you already have Jupyter Lab >3.0, you can install it with `pip install eigendata`
   2. If you do not have Jupyter Lab installed
      1. [Download](https://docs.conda.io/en/latest/miniconda.html) & install miniconda
      2. <a href="https://raw.githubusercontent.com/molinsp/eigendata-doc/master/docs/files/environment.yml" download="">Download conda environment configuration file</a>
      3. Create a new environment with all dependencies `conda env create -f eigendata-jlab3.yaml ` 

# 🧩 Extension framework

Eigendata is built on top of an extensible framework to render Python methods as GUIs.

To use your own custom transformations:

1. You can add the JSON code to user transformations in the settings of the eigendata extension. 
2. If you want to share transformations across a team (e.g. common features), you can also provide a transformation sever URL that serves a file with the transformations. This can be set up with the `transformationServer` and `transformationAuth` in eigendata settings.

You can learn more about the transformation UI spec and how to create your own transformations in our [transformation documentation](/Transformation_documentation.ipynb).

**Example transformation UI from a JSON definition:**

```json 
"pandas.DataFrame.drop" : {
  "form" : {
        "required" : [
          "columns"
        ],
        "definitions" : {
          "columns" : {
            "type" : "array",
            "uniqueItems" : true,
            "items" : {
              "type" : "string",
              "enum" : []
            }
          }
        },
        "properties" : {
          "columns" : {
            "$ref" : "#/definitions/columns",
            "description" : "Select the columns that you want to remove."
          }
        },
        "title" : "Drop columns",
        "description" : "Drop columns from the dataframe.",
        "type" : "object",
        "callerObject" : "DataFrame",
    		"returnType" : "DataFrame",
        "function" : "drop"
      }
}
```

And the UI rendered based on this definition:

<img src="https://raw.githubusercontent.com/molinsp/eigendata-doc/master/docs/media/transformations_drop.png" alt="logo" style="zoom:50%;" />





# ❓FAQ

### Magic Formula Bar is blank/does not appear

This can be due to an adblocker preventing Eigendata from loading the transformations (which are hosted on our servers). In case you are using *Adguard*, you will need to disable it to get Eigendata working. Alternatively, you can switch to a browser where you don't have an adblocker installed.


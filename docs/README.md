![logo](/media/logo.png ':size=900')

## Introduction

Product managers, business analysts, operations managers, and other non-technical personas often need to analyze data and build workflows in a repeatable way. Many of them have learned a bit of code to automate business processes or analyze data. But for them, the cognitive overhead of remembering code syntax is too high.

Eigendata empowers these users with a low-code tool that makes manipulating data as easy as other GUI tools without the limitations that these tools often impose. With eigendata, all your transformation steps are built on battle-proofed standard open-source packages. You can share code with developers once it needs to be productionized, leverage custom code for instances where the tool does not provide a solution and manipulate anything programmatically.

## Eigendata notebook extension

Eigendata renders a form interface below cells in a Jupyter Notebook (can be hidden/shown with  `Ctrl E`), providing fast access to common data transformations without needing to remember the syntax or the exact name of the method. It enables users to become more productive by googling less, reducing syntax errors, and keeping track of the data at all times.

You can try it without installing [here](https://cloud.eigendata.co/).

![logo](https://raw.githubusercontent.com/molinsp/eigendata-doc/master/docs/media/eigendata_overview.png)

Besides these improvements, **Eigendata provides options to simplify the JupyterLab interface** for new users:

1. All the menus that can be found through `⌘ ⇧ C` are removed from the UI for simplicity
2. Intuitive coda/notion like shortcuts for the sidebars `⌘ /` `⌘ \`
3. When you close a tab, the kernel is shut down

All of these configurations can also be disabled through the advanced settings `⌘ ,`

## Eigendata framework for declarative API GUIs

Eigendata is not just a set of hard-coded UI elements on top of a library. It aims to build a generalizable framework to create GUIs for code libraries. The core framework is based on [react-jsonschema-form](https://react-jsonschema-form.readthedocs.io/en/latest/), with several extensions. You can learn more about the transformation UI spec and how to create your own transformations in our [transformation documentation](/Transformation_documentation.ipynb).

To use your own custom transformations, you can either add the JSON code to user transformations in the settings of the eigendata extension. If you want to share transformations across a team (e.g. common features), you can also provide a transformation sever URL that serves a file with the transformations. This can be set up with the `transformationServer` and `transformationAuth` in eigendata settings.

Example transformation UI from a JSON definition:

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

# 🖥️ Installation

1. [Try online](https://cloud.eigendata.co/)
2. Install locally
   1. If you already have Jupyter Lab >3.0, you can install it with `pip install eigendata`
   2. If you do not have Jupyter Lab installed
      1. [Download](https://docs.conda.io/en/latest/miniconda.html) & install miniconda
      2. <a href="files/environment.yaml" download="">Download conda environment configuration file</a>  in the downloads folder
      3. Create a new environment with all dependencies 
         1. Open a terminal in the directory where you downloaded the file and run`conda env create -f eigendata-jlab3.yaml ` 



# ❓FAQ

### Magic Formula Bar is blank/does not appear

This can be due to an adblocker preventing Eigendata from loading the transformations (which are hosted on our servers). In case you are using *Adguard*, you will need to disable it to get Eigendata working. Alternatively, you can switch to a browser where you don't have an adblocker installed.




# 🖥️ Installation

If you don't have Anaconda installed, you will need to [download and install](https://www.anaconda.com/products/individual) it before proceeding.

**Instructions for Windows**

1. <a href="files/install_windows.bat" download="">Download installer</a>  in the downloads folder
2. <a href="files/windows_environment.yaml" download="">Download configuration file</a>  in the downloads folder
3. Double click on `install_windows.bat`

**Instructions for Mac/Linux**

1. <a href="files/install_default.sh" download="">Download installer</a> to the downloads folder
2. <a href="files/default_environment.yaml" download="">Download configuration file</a> to the downloads folder
3. Open a terminal
   1. If you have trouble, see the section Updating Eigendata with a detailed walkthrough on how to open the terminal.
4. Type  `cd ~/Downloads`
5. Type `sh install_default.sh`



# 🏃Getting started

<iframe width="640" height="400" src="https://www.loom.com/embed/dfe8927e70c3417d8af1c70133da09eb" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>



# 🔄 Updating Eigendata

1. Open Anaconda, go to environments (on the left), and select **eigendata** (it will take a bit to load)

<img src="https://lh4.googleusercontent.com/LNwPTeG9yRPrBrak0X28ERj2vn5O1ynPoaURWbrMYdeEouUKxa_MH_MWbbEepZu0OTG4q9GXDIv7J3NsBpfDtHPiPcFp4-iBL4xAENqAuhPAjEqr-LzXUK7noQvfkqHo7Q-4nIAM" alt="img" style="zoom:50%;" />

2. Select Open Terminal

<img src="https://lh4.googleusercontent.com/y14FaIC9W5KFgafHekB5xvxTeaCbgsXdA1vntAAE2p5Z-3zBsztiOt0bzymgvPmhOCPQ_dWsICZCgWL_h1CIr2PuvPLeA7J0CXsa6WvCvvIETYWhGZaP6IIue_r6WdagF9ASYAer" alt="img" style="zoom:50%;" />

3. Run the following commands in the terminal

   1. ```
      jupyter labextension update @molinsp/eigendata
      ```

   2. ```
      pip install -i fastdata --upgrade
      ```

      

# 🗒️ Release notes

## 0.2.3

**Magic formula bar**

1. **Histograms:** Histograms allow you to understand the distribution of a variable and are among the most commonly used data visualizations. They help you understand how extreme or common a value may be.
2. **Time delta:** When working with date columns, you can make date calculations like date "+ 30 Days".
3. **Extract JSON**: When working with real data, you will often encounter data that is encoded as JSON. We have added a new transformation that allows you to easily extract specific fields from within a JSON object.
4. **Null counts**: Get a quick overview of how many blanks exist in each column, as a total number and a percentage of the number of rows.

**Data visualizer**

1. **Pagination:** Sometimes, a data preview is not enough, and you need to locate a specific row or column to understand what is going on. We have experienced that ourselves and brought functionality that allows you to load additional pages of data.



## 0.2.2

**Important changes**

1. Deprecated use of pyforest for a new *magic import system. It will* write the import statements for you in the first cell of the notebook automatically. You don't have to worry about import statements and can still keep track of every package that is used in the notebook.

**Magic formula bar**

1. **Plotting in the notebook** supported via [Plotly express](https://plotly.com/python/plotly-express/)
2. Transformations to clean text, convert columns to numerical values, and set and remove indexes 
3. Improved search functionality

**Data visualizer**

1. **Sort in the data visualizer**
2. Column resizing is no longer lost when you change tabs



## 0.2.1

**Important changes**

1. You need to install gspread-pandas to load google sheets
   1. `conda install -c conda-forge gspread-pandas`

**Magic Formula Bar**

1. Google Sheets and Airtable data import

**Data Visualizer**

1. Ability to resize columns
2. Thousand separators for columns with numbers
3. Visualization for non-dataframe variables

## 0.1.9

**Important changes**

1. You need to install pyforest for Eigendata 0.1.9 to work properly
2. 1. `pip install pyforest`
3. You need to install xlrd to be able to load excel datasets
4. 1. `pip install xlrd`
5. fastdata has graduated and is no longer in test pip. To get latest version
   1. `pip uninstall fastdata`
   2. `pip install fastdata`
6. New chat functionality allows you to get help right from Eigendata Formula Bar

**Magic Formula Bar** 

1. **No more import errors!** Now all the library import is handled for you
2. **Better error handling:** If the selected transformation generates an error, you can see it directly in the formula bar, and it will not write in the notebook
3. **Load data from excel files.** More sources coming soon
4. **Create new columns** with a static value. Useful when you want to put different datasets together and want a column to differentiate
5. **Filter improvements:** Search among all the columns for wide datasets, filter out empty values in date columns, and select several options in a categorical column with a multi-select
6. **Better functions for handling text:** perform common operations like removing initial or trailing characters, and extract text at certain positions.
7. **Parameter and transformation description improvements**

**Data Visualizer**

1. **Delete button**: We know data analysis is sometimes a messy process. We help you keep it in check with a delta table functionality you can easily trigger from the data visualizer.
2. **Support for special characters**: Now, you can properly display Spanish and Greek characters, among others
3. **NaNs shown explicitly**: To help you with your data analysis tasks and avoid confusion with empty strings, we are now explicitly displaying NaN when the value is NaN, just like when you print in the notebook
4. **Show index in data visualizer**, to keep track of the rows number you are seeing

**Bug fixes**

1. Subtract function which was not working properly
2. Display of booleans in the data visualizer
3. Behavior of not in the filter transformation
4. Joins with multiple values were not working properly. Now this is fixed

## 0.1.8 

This version has focused mostly on improving the experience: reducing errors and extending the transformations to cover most common use cases.

Notice you also need to update to fastdata 0.0.7

**Important changes** 

1. Limited the number of columns displayed to 200. We will add functionality to enable loading more columns in future releases, but this enables to transpose a dataframe with thousands of rows without the app crashing or slowing down significantly.

**Transformations** 

1. **Arithmetic on columns:** Something that was not previously possible was to perform arithmetic operations on columns (e.g., divide values by 1000). Now, you have transformations dedicates specifically to element-wise column arithmetic: divide, add, multiply, exponentiate, subtract
2. **Split list to columns:** The previous split function did not work very well. We have improved the way it works and added the possibility to:
    6. Deal with lists with parenthesis or brackets
    7. Create new column indicators for each unique item (i.e. 0/1) or extract the items by order by using the split_type variable
3. **Flat pivot tables:** Pivot tables are now flat by default, instead of having a hierarchical index, which does not allow filtering and is hard to understand
4. **Encode labels to numbers:** Allows to convert categorical variables to numbers
5. **Data overview:** Added basic support for better understanding the data: column statistics and null values
6. **Transpose table:** Generate a transposition of a table
7. **Change value based on indicator:** This function allows to change the value of a column/create a new column based on the values of an indicator. It is usually used after generating a true/false indicator with the filter functionality. For example, you can replace all the outliers above a certain value with a smoothed number.
8. **Keep columns:** You can now express the columns you want to keep and not just the ones you want to delete
9. **Rename categories:** You can now give different names after using the bucket function (or apply it to any other categorical variable). For example, you can rename [15-25] to something like “high”. It only works following the order of the buckets (from small to bigger) for the moment.
10. **More consistency:** improved the consistency of the parameters: 
    10. Most of the transformations have a description
    11. Improve parameter descriptions

**Data visualizer**

1. **Sticky header:** Not the header sticks on top, so that you know to which column the variables relate to
2. **Dataframe info** Added information about the size of the dataframe, in terms of columns and rows 
3. **Datatype** Added information about the data types

**Bug fixes** 

1. Creating a column after a query: This was raising a warning in some instances

2. Saving to csv did not work as expected when it tried to assign the result to a variable



# ❓FAQ


## Error messages

### Magic Formula Bar is blank

This can be due to an adblocker preventing Eigendata from loading the transformations (which are hosted on our servers). In case you are using *Adguard*, you will need to disable it to get Eigendata working. Alternatively, you can switch to a browser where you don't have an adblocker installed.

### Node.js not supported 


```
Node.js is only supported on Windows 8.1, Windows Server 2012 R2, or higher. Setting the NODE_SKIP_PLATFORM_CHECK environment variable to 1 skips this check, but Node.js might not execute correctly. Any issues encountered on unsupported platforms will not be fixed.
```

**Solution:**

1. run the following command: set NODE_SKIP_PLATFORM_CHECK=1
2. If the problem persists, contact pere@eigendata.co


### Config option `template_path` not recognized 


```
Config option `template_path` not recognized by `ExporterCollapsibleHeadings`.  Did you mean one of: `extra_template_paths, template_name, template_paths`?
```

**Solution**

1. This is likely caused by an issue with the nbconvert package
2. You can downgrade it to a compatible version as suggested [here](https://github.com/ipython-contrib/jupyter_contrib_nbextensions/issues/1529)
    1. `conda install "nbconvert=5.6.1"`




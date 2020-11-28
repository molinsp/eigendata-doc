

# 🖥️ Installation

1. Download [anaconda](https://www.anaconda.com/products/individual)
2. Download installers
   1. Windows
      1. <a href="files/install_windows.bat" download="">Installer</a> 
      2. <a href="files/windows_environment.yaml" download="">Configuration File</a> 
   2. Mac/Linux
      1. <a href="files/install_default.sh" download="">Installer</a> 
      2. <a href="files/default_environment.yaml" download="">Configuration File</a> 



# 🏃Getting started

1. Run Anaconda in your computer
2. In home screen of Anaconda (you can see if you are in “Home” on the left), change the dropdown to **eigendata**

![img](https://lh6.googleusercontent.com/a368DCaCm7cbzoa-tAZtmPaBh9HtQ0xPnyxmR9y9iH-N7dUyGCfTBwCpqvYy8cPD8gQuqGiDGjoac1nn_WdC6d7b4HR1HYNmTzeFb_53CfUxAuo9JkynOJeWdqt1IOxxZKJLpC-t)

3. Now you can click launch to start Jupyter Lab

![img](https://lh6.googleusercontent.com/EXaa4ce3ctwcfQ5bBHvREOD2EV5vsXmLriC744DhMmxqlb7adHuA1NzMoHXTG6b5y9wYoCwKJbVRb0ISkW6TWlXqxod0L1-5TI10W62iFVj5OCJmkK0LzypcUYx9eRFNCVLzSdRg)

4. Getting the Eigendata interface: Once in JupyterLab, select Eigendata in the menu on the top

<img src="https://lh4.googleusercontent.com/51is3SK4UDkXwKNoq9GtvQUZ4ST0TnEe4-YNGCeUwwWm7M0ECPyWwVrlfdN9n9hdEFtnfY_-BBPQCOjKusaSLRvW0ZLMF-1TlK3ZY7DWAUl2gke3_qOxVXwy0tFwrKRYt-CNCOwx" alt="img" style="zoom:100%;" />

5. Click **Magic Formula Bar**

![img](https://lh6.googleusercontent.com/1FzR9RzxYkm6G21NQn_EF2sJxtUtc9EXmqND-BF702rBtKWA_nrmKU73muvQZotOPTDiPLf_kLFWIHcsj5Qju2YozB3KCO4WjEZ6JlWo6gULKoEdK9ARJeMZ_h1qsdU5rOHRSpuJ)



# 🔄 Updating Eigendata

1. Open Anaconda, go to environments (on the left) and select **eigendata** (it will take a bit to load)

![img](https://lh4.googleusercontent.com/LNwPTeG9yRPrBrak0X28ERj2vn5O1ynPoaURWbrMYdeEouUKxa_MH_MWbbEepZu0OTG4q9GXDIv7J3NsBpfDtHPiPcFp4-iBL4xAENqAuhPAjEqr-LzXUK7noQvfkqHo7Q-4nIAM)

2. Select Open Terminal

![img](https://lh4.googleusercontent.com/y14FaIC9W5KFgafHekB5xvxTeaCbgsXdA1vntAAE2p5Z-3zBsztiOt0bzymgvPmhOCPQ_dWsICZCgWL_h1CIr2PuvPLeA7J0CXsa6WvCvvIETYWhGZaP6IIue_r6WdagF9ASYAer)

3. Run the following commands in the terminal

   1. ```
      jupyter labextension update @molinsp/eigendata
      ```

   2. ```
      pip install -i fastdata --upgrade
      ```

      

# 🗒️ Release notes

## 0.1.8 

This version has focused mostly on improving the experience: reducing errors and extending the transformations to cover most common use cases.

Notice you also need to update to fastdata 0.0.7

**Important changes** 

1. Limited the number of columns displayed to 200. We will add functionality to enable loading more columns in future releases, but this enables to transpose a dataframe with thousands of rows without the app crashing or slowing down significantly.

**Transformations** 

1. **new Arithmetic on columns:** Something that was not previously possible was to perform arithmetic operations on columns (e.g. divide values by 1000). Now, you have transformations dedicates specifically to element-wise column arithmetic:
    1. [Column] Divide column values
    2. [Column] Add to column values
    3. [Column] Multiply column values
    4. [Column] Exponentiate column values
    5. [Column] Subtract from column values
2. **improvement Split list to columns:** The previous split function did not work very well. We have improved the way it works, and added the possibility to:
    6. Deal with lists with parenthesis or brackets
    7. Create new column indicators for each unique item (i.e. 0/1) or just extract the items by order by using the split_type variable
3. **improvement Flat pivot tables:** Pivot tables are now flat by default, instead of having a hierarchical index, which does not allow filtering and is hard to understand
4. **new [Column] Encode labels to numbers:** Allows to convert categorical variables to numbers
5. **new Data overview:** Added basic support for better understanding the data before working on it. This is currently outputted in the notebook
    8. Overview: Null values and types
    9. Overview: Column statistics
6. **new Transpose table:** Generate a transposition of a table
7. **new [Column] Change value based on indicator:** This function allows to change the value of a column/create a new column based on the values of an indicator. It is usually used after generating a true/false indicator with the filter functionality. For example, you can replace all the outliers above a certain value with a smoothed number.
8. **new [Column] Keep columns:** You can now express the columns you want to keep and not just the ones you want to delete
9. **new [Column] Rename categories:** You can now give different names after using the bucket function (or apply it to any other categorical variable). For example, you can rename [15-25] to something like “high”. It only works following the order of the buckets (from small to bigger) for the moment.
10. **improvement More consistency:** improved the consistency of the parameters: 
    10. Most of the transformations have a description
    11. Improve parameter descriptions

**Data visualizer**

1. **improvement** Not the header sticks on top, so that you know to which column the variables relate to
2. **new** Added information about the size of the dataframe, in terms of columns and rows 
3. **new** Added information about the data types. This is useful to know if you need to parse the column to a datetime or not

**Bug fixes** 

1. Creating a column after a query: This was raising a warning in some instances, it has been fixed

2. Saving to csv did not work as expected when it tried to assign the result to a variable



# ❓FAQ


## Error messages


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




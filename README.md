# Matlab Figure Plotting

This is an example script to plot something in Matlab and then create some high quality figures. This means that they will look well in documents written using Times New Roman with a font size of around 11pt.

Suggestions are of course welcome.

Scripts that are freely available on the web are used and provided here also. No copyright infringement is intended.

Some of the things that are an improvement with respect to a typical plot created using Matlab's default settings:
1. Image quality - Matlab tends to save in pixelated images by default which look poor.
2. Sizing and proportions - the figures will be printed at a size and proportion that looks well within itself and also with respect to the surrounding text in the document. A figure size will be specified in centimetres and the actual plot will maintain that in a document without any need for resizing etc. This will make it look good and consistent.
3. Colours - Default colours in Matlab are not great and limited. Here a list of standard colours is provided in a single variable that can be used while looping plots etc.
4. Subplots - While not a specific function, examples of how to make good subplots are included, which obviously means NOT using the subplot function in Matlab.
5. Gridlines - Matlab provided dashed gridlines by default. Here these are changed by default to solid grey lines.
6. Text - The default text is changed to Times New Roman and the font sizes are scaled relatively, with the axis text labels set as the largest, then the axis numbers and legend text are slightly smaller.


# Required Scripts
startup.m - this is fundamental and is to be run at the beginning of your script so that it loads the variables that will be used in plotting. It also does a clear, close and clc sweep to clean the workspace etc.

The following functions are also needed:
1. rgb.m
1. setFigureProps.m
1. plotm.m
1. textplot.m
1. pdfUI.m


# Licensing
Copyright (C) 2017  Gerard J. O'Reilly

All of these programs are copyrighted under the GNU General Public License as published by the Free Software Foundation, version 2. In short, you can employ them freely (assuming you cite the original source and the relevant publication) but if you want to build upon, extend or re-distribute them, then the derivative software products will also have to be covered under the GPL (i.e. be free software). Other licensing options are negotiable.

# Disclaimer
These programs are distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

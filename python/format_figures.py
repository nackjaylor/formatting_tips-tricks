"""Module to format matplotlib figures in a publication quality way.

This module is a python implementation (or as close as we can get it) to the
MATLAB folder of code in our repo. This will seek to format your figures to a given
uniform style. There are options to use a LaTeX renderer for your figure generation,
however this requires an installed LaTeX distribution. We highly recommend you have
one of these as you will not always have Overleaf available.

NOTE: If you are using the LaTeX installation, you may need to use a double backslash
to denote functions, as they may be interpreted incorrectly.

Author: Jack Naylor
Contact: jack.naylor@sydney.edu.au
"""

from cycler import cycler
import matplotlib.pyplot as plt


def startup_plotting(font_size=14,line_width=1.5,output_dpi=600,tex_backend=False):

    if tex_backend:
        try:
            plt.rcParams.update({
                    "text.usetex": True,
                    "font.family": "serif",
                    "font.serif": ["Computer Modern Roman"],
                        })
        except:
            print("WARNING: LaTeX backend not configured properly. Not using.")
            plt.rcParams.update({"font.family": "serif",
                    "font.serif": ["Computer Modern Roman"],
                        })

    # Format lines, axes, grids, etc.
    # Colour map from https://www.nature.com/articles/nmeth.1618?WT.ec_id=NMETH-201106
    # Re-ordered as per https://docs.makie.org/stable/explanations/colors/#colormaps
    plt.rcParams.update({
        "lines.linewidth": line_width,
        
        "axes.grid" : True, 
        "axes.grid.which": "major",
        "axes.linewidth": 0.5,
        "axes.prop_cycle": cycler("color", [
            "#0072B2", "#E69F00", "#009E73", "#CC79A7", 
            "#56B4E9", "#D55E00", "#F0E442", "#000000"]),

        "grid.linewidth": 0.25,
        "grid.alpha": 0.5,
        
        "legend.framealpha": 0.7,
        "legend.edgecolor": [1,1,1],
        
        "savefig.dpi": output_dpi,
        "savefig.format": 'pdf'
    })

    # Change default font sizes.
    plt.rc('font', size=font_size) #controls default text size
    plt.rc('axes', titlesize=font_size) #fontsize of the title
    plt.rc('axes', labelsize=font_size) #fontsize of the x and y labels
    plt.rc('xtick', labelsize=0.8*font_size) #fontsize of the x tick labels
    plt.rc('ytick', labelsize=0.8*font_size) #fontsize of the y tick labels
    plt.rc('legend', fontsize=0.85*font_size) #fontsize of the legend 

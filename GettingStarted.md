

This tutorial aims to guide new users through the process of setting up and running our software.

## Step 1: Check your graphics card ##

---

Before you start, make sure that your graphics card is CUDA compatible (check Appendix A of the [CUDA programming guide](http://developer.download.nvidia.com/compute/cuda/3_0/toolkit/docs/NVIDIA_CUDA_ProgrammingGuide.pdf)) and has a Compute Capability of between 1.1 and 2.0 (Fermi).  Note that atomic instructions are only supported on devices with a Compute Capability of at least 1.1.  Most graphics cards today should be in this category.

If you don't have a proper graphics card or if you want the best performance from our code, we recommend purchasing the latest Fermi-generation GPU, such as [GeForce GTX 480](http://www.nvidia.com/object/product_geforce_gtx_480_us.html).  However, ensure that your power supply is at least 600 W (with 6-pin & 8-pin power connectors) and the motherboard supports PCI-E 2.0 x 16.

## Step 2: Install CUDA, Developer Drivers, and SDK Samples ##

---

Then, just follow all the steps in the [NVIDIA Getting Started Guide](http://developer.download.nvidia.com/compute/cuda/3_0/docs/GettingStartedWindows.pdf).

If you have a Fermi GPU, install [CUDA ToolKit 3.0 and GPU Computing SDK code samples](http://developer.nvidia.com/object/cuda_3_0_downloads.html) along with the proper Developer Drivers.  **Make sure you upgrade both the driver and the CUDA Toolkit, and not one of the two!  Otherwise, the code will not run !**

## Step 3: Verify the steps above ##

---

Make sure you have everything set up properly, by running a simple SDK code sample, as suggested in the [NVIDIA Getting Started Guide](http://developer.download.nvidia.com/compute/cuda/3_0/docs/GettingStartedWindows.pdf)

## Step 4: Download our software package ##

---

Download and unarchive: [GPU3D](http://gpu3d.googlecode.com/files/gpu3d_win32.zip)

## Step 5: Run a simple test ##

---


**Note 1: The current beta release is tuned specifically for GTX 280, GTX 295, and GTX 480 (Fermi).  Older graphics cards may not have enough resources to launch the program.**

**Note 2: This beta release is not compiled with the highest level of optimizations.**

#### _For Windows Users Only_ ####
  1. Run the program by double-clicking **gpu3d.exe**
  1. Enter the input file name: **liver.mci**

To scroll through the slices (xy, yz, xz planes), press **1, 2; 3, 4; or 5, 6**.

To rotate, press **q, w; a, s; or z, x** (to rotate around the x, y, and z axes).

To toggle automatic rotation, press the **space bar**.

## (Optional) Step 6: Plot the simulation output with MATLAB ##

---

Use the MATLAB script (**plotslice.m**) to plot the output or to parse the simulation output file (**liver\_20M.mco\_node\_1**) for further analysis.

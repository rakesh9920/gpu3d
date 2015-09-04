<table>
<tr>
<td><a href='http://code.google.com/p/gpu3d/wiki/GettingStarted'><img src='https://gpu3d.googlecode.com/svn/wiki/images/logo.png' /></a> <td /> <td>
<h1>What is GPU3D?<h1 />
GPU3D is a GPU-accelerated Monte Carlo (MC) program for simulating light transport in 3D voxelized tissue geometry and is designed to potentially enable real-time, MC-based light dosimetry in photodynamic therapy treatment planning using GPU clusters.<br>
<br>
<td />
<tr />
<table />

<h2>Current Features</h2>
<hr />
<ul><li>Interactive interface for 3D data visualization (shown above)<br>
</li><li>Validation using a commercial light modelling software (ASAP) from <a href='http://www.breault.com/'>BRO</a>
</li><li>Supports the state-of-the-art <a href='http://www.nvidia.com/object/fermi_architecture.html'>Fermi GPU</a> (first NVIDIA GPU built for general-purpose computing)<br>
</li><li>Backward compatible with GTX200 series graphics cards<br>
</li><li>Enables real-time computation using a GPU cluster<br>
</li><li>Modelling of multiple, finite-sized sources (currently supports circular, flat beams)</li></ul>


<h2><i>New Book</i></h2>
<hr />
<table>
<tr>
<td><a href='http://www.amazon.com/Computational-Acceleration-Medical-Treatment-Planning/dp/3639250389/ref=sr_1_1?ie=UTF8&s=books&qid=1280806812&sr=8-1'><img src='http://ecx.images-amazon.com/images/I/41HHaxk3mvL._SL500_AA300_.jpg' /></a>  <td /> <td>

<b>Title</b>: Computational Acceleration for Medical Treatment Planning: Monte Carlo Simulation of Light Therapies Accelerated using GPUs and FPGAs.<br>
<br>
<b>Description</b>: In medicine, there is a clear trend towards individualized therapies, for cancer and other diseases. Individualized treatment planning for cancer, particularly in radiotherapy and light therapies, is a complex optimization problem. As analytical inverse planning solutions do not exist for light therapies, a large number of light delivery configurations must be evaluated to find one that best conforms to the clinical target (e.g., a tumour). An integral part of this optimization is the accurate computation of light dose, ideally using Monte Carlo (MC) simulations for realistic, 3-D modelling. This text explores two hardware-accelerated solutions to overcome the general speed limitation of MC simulations: (1) designing custom hardware on field-programmable gate arrays, and (2) creating highly parallel software on graphics processing units (GPUs). Notably, a speedup of over 1000x was achieved on four GPUs compared to a state-of-the-art CPU. As the Monte Carlo method is used in many fields such as radiation medicine, this text also includes the GPU MC code package and is of interest to scientists, engineers, and medical professionals exploring real-time treatment planning solutions.<br>
<br>
<b>ISBN-10</b>: 3639250389<br>
<br>
<b>ISBN-13</b>: 978-3639250381<br>
<br>
<td />
<tr />
<table />





<h2>Latest Beta Release</h2>
<hr />
<a href='http://gpu3d.googlecode.com/files/gpu3d.zip'><img src='https://gpu3d.googlecode.com/svn/wiki/images/download.png' /></a> <a href='http://code.google.com/p/gpu3d/wiki/GettingStarted'><img src='https://gpu3d.googlecode.com/svn/wiki/images/gettingstarted_button.png' /></a>
<a href='http://code.google.com/p/gpumcml'><img src='https://gpumcml.googlecode.com/svn/wiki/images/download_button.png' /></a>

<h2>Ongoing Developments (for future release)</h2>
<hr />
<ul><li>Extension of source modelling capabilities to support more complex sources<br>
</li><li>Extension of GPU cluster implementation (using MPI)<br>
</li><li>Validation with more sophisticated test cases (varying number of voxels, resolution, and tissue optical properties)<br>
</li><li>Further optimization of the GPU code (constant memory and shared memory optimizations)
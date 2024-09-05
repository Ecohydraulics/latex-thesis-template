## Bachelor's and Master's Thesis Template

This repository contains LaTex templates for writing a Bachelor's or Master's thesis in the corporate design format of the University of Stuttgart. 


### Installation and Requirements

Overleaf users: Download this Github repo as zip file and upload the whole folder as a new project in Overleaf

For a local compiler (RECOMMENDED!): Download this Github fork or clone this repository: 

```
git clone https://github.com/Ecohydraulics/latex-thesis-template
```

Make sure to back-up your thesis on a remote copy of this repository in your GitHub or GitLab (or whatever Git-platform) account. New to Git? Check out our tutorial: [https://hydro-informatics.com/get-started/git.html](https://hydro-informatics.com/get-started/git.html).

To edit the source files locally on Windows use the following software:

* [Miktex](https://miktex.org/) - installed WITHOUT ADMIN rights to enable on-the-fly package installation
* [TexStudio](https://www.texstudio.org/)

TexStudio will use Miktex to compile a pdf file of the tex files.

### Usage

To compile the template, open `myThesis.txss2` in TexStudio and press `F5`. If you get compilation errors related to missing packages, the reason is probably a wrong setup of Miktex (e.g., installed as admin, or no on-the-fly package installation enabled). Note that `myThesis.txss2` points to `myThesis.tex`, the root document of the thesis template, which includes the other TEX files (`introduction.tex`, `state-of-the-art.tex`, `methods.tex`, `results.tex`, `discussion.tex`, and `conclusions.tex`). We recommend to not modify this root structure and only work in the `introduction.tex`, `state-of-the-art.tex`, `methods.tex`, `results.tex`, `discussion.tex`, and `conclusions.tex` files.

> Note: This template uses a customized class called `thesis.cls`, which provides the `thesis` class. The `thesis` class inherits from the native `report` class. Feel free to extend this class file by your specific needs, for instance, by defining new commands or adding other packages (`\RequirePackage{<pkg-name>}`).

Uni Stuttgart students: Please take the time to also read our guidelines on how to write a Bachelor's or Master's thesis with us. These files are stored in the sub-folder `how-to-write-a-thesis`.

### Tables and figures

An example for a table is provided in `state-of-the-art.tex`.

Figures should be stored in the `images` subfolder. Note that images with many different pixels should be in JPG format. Graphs with a lot of white background should be stored in PNG format, with an alpha-layer for white. For image manipulation, we recommend [Gimp](https://www.gimp.org).


### Bibtex References

We recommend working with a citation/reference manager. For the domain of hydraulic engineering, you may want to work with our hydro-informatics.com zotero library: [https://www.zotero.org/groups/4917569/hydro-informatics/library](https://www.zotero.org/groups/4917569/hydro-informatics/library). This library, located in *hydro-informatics.bib*, will occasionally be updated in this repository.

In Zotero, bibrefs can be created using the Better Bibtex Addon ([see their docs](https://retorque.re/zotero-better-bibtex/)). The plugin can be installed within Zotero. For citation keys, we recommend to use the following preferences in the Better BibTex preferences (Zotero > Edit > Settings > Better BibTex > Citation keys box):

```
auth.lower + year + shorttitle(1,1).lower
```


### Attention

* By using this template one is not exempted from checking for mistakes or adapting other preferences. Please use spell-checkers!
* The owner of this repository does not hold legal responsibility for its implementation. However, improvements and constructive feedback is very welcome. :)
* Check the license and disclaimer for more information.


## DISCLAIMER

No warranty is expressed or implied regarding the usefulness or completeness of the files, information, and documentation provided. References to commercial products do not imply endorsement by the Authors. The concepts, materials, and methods used in the files, algorithms, and described in the documentation are for informational purposes only. The Authors have made substantial effort to ensure accuracy, but the Authors shall not be held liable, nor their employer(s) or funding sponsors, for calculations and/or decisions made on the basis of application of the scripts and documentation. The information is provided "as is" and anyone who chooses to use the information is responsible for her or his own choices as to what to do with the output. The individual is responsible for the results that follow from their decisions.

This repository contains external links to other, external web sites and information provided by third parties. There may be technical inaccuracies, typographical or other errors, programming bugs or computer viruses contained within linked third party sources or their contents. Users may use the information and links at their own risk. The Authors of this repository exclude all warranties whether express, implied, statutory or otherwise, relating in any way to this repository or use of this repository; liability (including for negligence) to users in respect of any loss or damage (including special, indirect or consequential loss or damage such as loss of revenue, unavailability of systems or loss of data) arising from or in connection with any use of the information on or access through this repository for any reason whatsoever (including negligence).

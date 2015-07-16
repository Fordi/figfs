# Figfs

The Filesystem Interface to Git (known by the acronym “figfs”, pronounced like “figs”) allows developers to work with a project in a Git repository just like a local filesystem. This means that all the branchs, tags, and revisions are available for browsing without having to check anything out. This is great for browsing project histories because you can have your editor pointed at two different versions at once and can use all your normal tools like diff to compare things.

In addition, figfs has the ability to create a “workspace” in which the contents of the repository at a particular revision can be freely edited.

### Releases

v0.1.0: First official release, _very_ beta-level code

### Building from source

#### Requirements

* [ocaml](https://ocaml.org/) (apt link: [ocaml](apt://ocaml))
* [camlidl](http://caml.inria.fr/pub/old_caml_site/camlidl/) (apt link: [camlidl](apt://camlidl))


#### Library dependencies

* [FUSE headers](http://fuse.sourceforge.net/) (apt link: [libfuse-dev](apt://libfuse-dev))
*   [ounit](http://www.xs4all.nl/~mmzeeman/ocaml/) (tested with 1.0.2; apt link: [libounit-ocaml-dev](apt://libounit-ocaml-dev))
*   [camlzip](http://cristal.inria.fr/~xleroy/software.html#camlzip) (tested with 1.03; apt link: [libzip-ocaml-dev](apt://libzip-ocaml-dev))
*   [ocaml-sqlite3](http://www.ocaml.info/home/ocaml_sources.html#toc13) (tested with 1.2.0; apt link: [libsqlite3-ocaml-dev](apt://libsqlite3-ocaml-dev))

Code is licensed under the GPLv2\. The project was the Senior Design Project of [Reilly Grant](http://github.com/reillyeon) at the University of Pennsylvania’s School of Engineering and Applied Science with Jonathan M. Smith as advisor.

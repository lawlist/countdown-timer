This is an example of a count-down timer that sets the `package-user-dir` and
loads the corresponding user customization file.

1.  Backup any existing `.emacs` file in your home directory; e.g., rename it to
    something like `.emacs_original`.

2.  Save the example `.emacs` file in this repository to your home directory.

3.  After you or Emacs has created the `user-emacs-directory` such as `~/.emacs.d`,
    create the following directories:

    ~/.emacs.d/elpa_1

    ~/.emacs.d/elpa_2

    ~/.emacs.d/elpa_3

and then create and customize the following files:

    ~/.emacs.d/elpa_1/init_1.el

    ~/.emacs.d/elpa_2/init_2.el

    ~/.emacs.d/elpa_3/init_3.el

EXAMPLE:

* `~/.emacs.d/elpa_1/init_1.el` might contain code loading your favorite
starter kit.

* `~/.emacs.d/elpa_2/init_2.el` might contain code loading your second favorite
starter kit.

* `~/.emacs.d/elpa_3/init_3.el` might contain code loading your third favorite
starter kit.
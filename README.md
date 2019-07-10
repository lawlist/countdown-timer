This is an example of a countdown timer that sets the `package-user-dir` and
loads the corresponding user customization file.  The user is presented with a
few choices, e.g., option 1, 2 or 3.  If the user makes no selection within the
allotted countdown time, then nothing will happen except a message stating so.
The default hard-coded values for `package-user-dir` will be:

* `~/.emacs.d/elpa_1` if the user chooses option # 1.

* `~/.emacs.d/elpa_2` if the user chooses option # 2.

* `~/.emacs.d/elpa_3` if the user chooses option # 3.

* `~/.emacs.d/elpa` if the user does *not* choose option # 1, 2 or 3.

**SETUP**:

1.  Backup any existing `.emacs` file in your home directory; e.g., rename it to
    something like `.emacs_original`.

2.  Save the example `.emacs` file in this repository to your home directory.

3.  After you or Emacs has created the `user-emacs-directory` such as `~/.emacs.d`,
    create the following *files*:

    `~/.emacs.d/init_1.el`

    `~/.emacs.d/init_2.el`

    `~/.emacs.d/init_3.el`

EXAMPLE:

* `~/.emacs.d/init_1.el` might contain code loading your *absolute* favorite
starter kit.

* `~/.emacs.d/init_2.el` might contain code loading your *second* favorite
starter kit.

* `~/.emacs.d/init_3.el` might contain code loading your *third* favorite
starter kit.

![screenshot](https://www.lawlist.com/images/countdown_3.png)

![screenshot](https://www.lawlist.com/images/countdown_2.png)

![screenshot](https://www.lawlist.com/images/countdown_1.png)

![screenshot](https://www.lawlist.com/images/countdown_0.png)
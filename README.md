sitemaster_vagrant_unl
======================

Vagrant instance for Sitemaster.  Automates checkout/install of custom UNL plugins.

Simply run `vagrant up` from the root of this repository.

How to make pull requests
=========================
1. Fork the repository that you want to work on
2. Add your remote to that repository (`cd {repo directory}`, `git remote add {remote name} {remote url}`)
3. Add a branch for your new feature/fix, then check it out (`git checkout -b issue-{issue number from github}`)
4. Make changes, and commit
5. Push up to your remote
6. Open a pull request in github

Available repositories are:
---------------------------
Core      - server/sitemaster/                          - https://github.com/UNLSiteMaster/site_master.git
UNL       - server/sitemaster/plugins/unl/              - https://github.com/unl/sitemaster_plugin_unl.git
UNL AUTH  - server/sitemaster/plugins/auth_unl/         - https://github.com/unl/sitemaster_plugin_auth_unl.git
UNL THEME - server/sitemaster/plugins/theme_unl/        - https://github.com/unl/sitemaster_theme_unl.git
PA11y     - server/sitemaster/plugins/metric_pa11y/     - https://github.com/UNLSiteMaster/metric_pa11y.git
W4C HTML  - server/sitemaster/plugins/metric_w3c_html/  - https://github.com/UNLSiteMaster/metric_w3c_html.git

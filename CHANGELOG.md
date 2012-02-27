## 0.0.1 (25 February 2012)

  - Initial Commit

## 0.0.2 (26 February 2012)

  - Redacted

## 0.0.3 (26 February 2012)

  - Added install generator for automatically adding kendoui JS and CSS files to projects
  - Added generator option to specify theme (default is default)

## 0.0.4 (27 February 2012)

  - Modified install generator to auto-add asset declarations to `application.js` and `application.css` for Rails 3.1+ apps with the asset pipeline enabled. Pre 3.1 apps, as well as those with `config.assets.enabled = false` will have the appropriate files copied over to `public/javascripts` and `public/stylesheets`

## 0.0.5 (27 February 2012)

  - Added jQuery source for non-Asset Pipeline installations
  - Added 'all' option to theme switch to install all themes and styles
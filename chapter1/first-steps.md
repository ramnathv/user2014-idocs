## First Steps

You can go from installation to publishing a web-document in all of 5 minutes. Watch this screencast if you are not convinced!

<iframe width="500" height="360" src="//www.youtube.com/embed/I95GOmLc7TA" frameborder="0" allowfullscreen></iframe>

If you have already installed `slidify` and `slidifyLibraries`, you can create and share an HTML5 slide deck in three simple steps.

### Author

The first step is to create a new directory `mydeck` and add the necessary scaffolding. If you have `git` installed, this step will also initialize the `mydeck` folder as a git repo, checkout its gh-pages branch, add and commit everything. Finally, it will open index.Rmd for you to edit.

```r
author("mydeck")
```

Edit the YAML front matter (if you don't know what it is, just replace everything to the right of the : in the lines between the --- right at the top). Edit the deck, making sure to separate your slides by a blank line followed by three dashes ---.

### Slidify

The second step is to generate a html document from index.Rmd. It is a static file, which means that you can open it in your browser locally and it should display fine.

```r
slidify("index.Rmd")
```

### Publish

The third and last step is the magical step of publishing your deck. By default slidify is setup to publish to [github](http://github.com). Login with your github account and [create a new repository](https://help.github.com/articles/creating-a-new-repository). Note that Github will prompt you to add a README file, but just use the defaults so that your repo is empty. You will need to have git installed on your computer and be able to [push to github using SSH](https://help.github.com/articles/generating-ssh-keys)

```r
# replace USER and REPO with your username and reponame
publish(user = "USER", repo = "REPO", host = 'github')
```

You can also publish to [RPubs](http://rpubs.com/) by setting `mode: standalone`, running `slidify` and then pushing it to rpubs.

```r
publish(title = "My First Deck", host = 'rpubs')
```

<style>
  p{text-align: justify;}
  iframe{
  	display: block;
  	margin: 0 auto;
  }
</style>

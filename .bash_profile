alias ll="ls -ahlF"

alias DO='ssh flyaway@104.236.134.157'

alias lab='ssh yichuz@lab2-1.eng.utah.edu'

alias runblog='cd ~/workspace/Git/CNBlog/;hexo server'

alias course='cd ~/Dropbox/Utah/Courses/'

alias dirblog='cd ~/workspace/Git/CNBlog/'

alias runweek='cd ~/Dropbox/个人管理/目标统计报表/2017/Diary/February/;gitbook serve --port 8000 --no-watch'

alias dirweek='cd ~/Dropbox/个人管理/目标统计报表/2017/Diary/February/'

alias dirpaper='cd ~/Dropbox/MyPapers/'

alias vim='/opt/local/bin/vim'

alias workdir='cd ~/workspace'

alias reportdir='cd ~/Dropbox/组内日常/讨论记录'

alias build='python setup.py sdist bdist_wheel'

alias upload='twine upload dist/* --skip-existing'

# alias nosetest='nosetests --with-coverage --cover-html --cover-html-dir=htmlcov -v'

alias ctags="`brew --prefix`/bin/ctags"

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
# PATH="~/Library/Haskell/bin:${PATH}"
# export PATH


eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

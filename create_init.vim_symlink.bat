pip install pynvim neovim-remote mps-youtube python-language-server yapf
npm i -g neovim bash-language-server ctags
mkdir C:\win_extensions
set PATH=%PATH%;C:\win_extensions\
cd C:\win_extensions\
curl -LJO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep-12.1.1-x86_64-pc-windows-msvc.zip
curl -LJO https://github.com/junegunn/fzf-bin/releases/download/0.21.1/fzf-0.21.1-windows_amd64.zip
7z .\* 
mklink /H %USERPROFILE%\AppData\Local\nvim\init.vim  %USERPROFILE%\.config\nvim\init.vim
mklink /J %USERPROFILE%\AppData\Local\nvim\coc\  %USERPROFILE%\.config\nvim\coc\
mklink /H %USERPROFILE%\AppData\Local\nvim\coc-settings.json  %USERPROFILE%\.config\nvim\coc-settings.json
mklink /H C:\win_extensions\* %USERPROFILE%\.config\nvim\utils\*
mkdir %USERPROFILE%\.config\yapf
mklink /H %USERPROFILE%\.config\yapf\style %USERPROFILE%\.config\utils\style

set /P pypy=Install pypy?(y/n)
if %pypy%==y (start "https://bitbucket.org/pypy/pypy/downloads/")

# yonghyuk's vimrc

## 설치

```bash
cd ~/
git clone https://github.com/dbdydgur2244/vim-setting
cd vim-setting
./install.sh
```



## Vim

### Leader Key

현재 Leader key는 `,`로 되어있음



### map과 noremap의 차이

**`map`**과 **`noremap`**은 각각  둘다 **normal** mode, **visual** mode and other modes에서 모두 작동함. 둘의 차이는 **recursive** and **non-recursive**임. 다음과 같이 세팅을 했다고 하자.

```
:map j gg
:map Q j
:noremap W j
```

그렇다면 `map`의 경우 `Q`, `j` 모두 `gg`로 mapping되어 있을 것이다. 하지만 `noremap`은 `W`는 `j`로 세팅되어 있을 것이다.

**`nnoremap`**의 경우는  `noremap`과 기능은 같지만 **normal** mode에서만 작동한다.

|       명령어       |                  설명                  |
| :-------------: | :----------------------------------: |
|    **`F2`**     |                  저장                  |
|    **`F3`**     |            nerdtree 창 띄어줌            |
|    **`,cc`**    |           해당하는 line에 주석을 담           |
| **`,c<space>`** | 해당하는 line에 주석을 다는데 다시 명령어를 치면 주석 사라짐 |
|  **` Ctrl-p`**  |             ctrlp 창 띄어줌              |



## Plugin

### nerdtree

vim용 탐색기이다. vim창에서 쉽게 파일 탐색가능하다.

`Ctrl+f`를 누르면 현재 파일을 찾아준다. 숨김파일을 보려면 I를 누르면 볼 수 있다.



### vim-airline

buffer에 쌓여있는 파일들을 시각화해서 보여주고 하단에 현재 모드를 표시해준다.



### vim-airline-themes

vim-airline theme plugin



### vim-cpp-highlighting

c++ syntax highlighting plugin이다. c++11기준으로 세팅하였다.



### python-syntax

python syntax highlighting plugin이다. python3 기준으로 세팅하였다.

python2로 바꾸려면 `Python2Syntax`를 입력하면 된다. 마찬가지로 python3는 `Python2Syntax`이다.



### vim-fugitive

git 명령을 vim에서 사용할 수 있게 git을 래핑한 플러그인이다. 로그 보기, 체크아웃, 상태 보기 등 git의 기능을 대부분 사용할 수 있다. git 기능을 안쓰더라도 설치만 해두면 **vim-airline**플러그인과 연동되어 상태바에 현재 브랜치를 띄울 수 있기 때문에 편리하다.



### vim-gitgutter

**vim-gitgutter**는 git으로 관리하는 파일의 변경된 부분을 Vim에서 확인할 수 있는 플러그인이다.



### ctrlp

Vim에서 파일을 빠르게 찾을 수 있는 기능을 제공한다. 현재 `Ctrl+p`를 누르면 실행된다. `Ctrl+f`를 눌러서 `mru`, `file`, `buffer`를 선택하여 파일을 찾을 수 있다.



### html

html syntax highlighting  plugin



### nerdcommenter

언어를 고려하지 않고 쉽게 주석을 달 수 있는 plugin이다. **`,c<space>`**를 통해서 주석을 달 수 있다. 다시 입력하면 주석이 사라진다.



### vim-easy-align

vim 자동정렬 plugin이다. 이 plugin은 설명을 읽어보는 것이 좋다. 기능이 너무 많다. 

https://github.com/junegunn/vim-easy-align



## putty인 경우

기본적으로 putty 색깔은 너무 이쁘지 않다.

고로 다음과 사진과 같이 Window-Colours에서 색깔들을 바꿔주어야함.

![screensh](https://github.com/dbdydgur2244/vim-setting/blob/master/img/putty-setting.PNG)

다음과 같이 바꾸면 된다. 이는 원하는대로 좀 수정하시길 바람.

- Default Foreground - 255/255/255
- Default Background - 51/51/51
- ANSI Black - 77/77/77
- ANSI Green - 152/251/152
- ANSI Yellow - 240/230/140
- ANSI Blue - 205/133/63
- ANSI Blue Bold -135/206/235
- ANSI Magenta - 255/222/173 or 205/92/92
- ANSI Cyan - 255/160/160
- ANSI Cyan Bold - 255/215/0
- ANSI White - 245/222/179




## Terminal인 경우

iTerm을 사용합시다. 다음 링크에서 맘에 드는 color scheme를 적용해서 사용

http://iterm2colorschemes.com/



iTerm2 + Oh My Zsh + Solarized color scheme + Meslo powerline font + [Powerlevel9k]  조합 추천드림

https://gist.github.com/kevin-smets/8568070






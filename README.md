# Zsh prompt script to display the root of your project


 **it searches up the directory tree for the first folder labeled with**
 **an OS X color label. ( you can change the color in the find_proj.rb file )**

* put this in your '~/.zshrc' ,change path to find_proj.rb
    * I modified the default Oh-My-Zsh prompt

```zsh
export PROMPT='%{$fg_bold[cyan]%}%{$bg_bold[white]%}PJ($(~/Testing/find_proj.rb))%{$bg_bold[default]%}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
```

* put this in your '~/.aliases' or '~/.zshrc'
    * typing 'p <CR>' will move you to your project root

```zsh
function p () { cd `path_to_proj.rb $1` }
```

- testing branch: added history ```p #``` will take you back to previously visited project folders
 
 ![](https://raw.github.com/Capybara/prompt/test/prompt.png)

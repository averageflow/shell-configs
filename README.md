# ZSH Config

My prefered zsh configuration, made from scratch, thoughtful choices.
End result should be something like below:

![Example Image](example.png)

To install follow these steps:

```
cd
mkdir workspace && cd workspace
git clone https://github.com/averageflow/zsh-config.git zsh
mkdir zsh-plugins && cd zsh-plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && git clone https://github.com/zsh-users/zsh-autosuggestions.git
cd
sudo ln -s /home/<YOUR_USER>/workspace/zsh/config ~/.zshrc
source ~/.zshrc
```

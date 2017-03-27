# aws-upload-zsh - 

The oh-my-zsh plugin to boost you productivity with aws-upload.

This is a aws-upload's plugin for zsh. The plugin will allow you to easily tab to get your projects and environments.

The requirements for this plugin are:  
- [aws-upload](https://github.com/borracciaBlu/aws-upload)  
- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)  
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#basic-installation)  

## How to install the oh-my-zsh plugin

Firstly, be sure you have [aws-upload](https://github.com/borracciaBlu/aws-upload), [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#basic-installation) installed properly.

Once you got the basic done, you have to:

1 - copy the `aws-upload` plugin to the `oh-my-zsh` plugins folder
2 - enable the plugin

### Copy the `aws-upload` plugin to the `oh-my-zsh` plugins folder

    git clone https://github.com/borracciaBlu/aws-upload-zsh.git ~/.oh-my-zsh/plugins/aws-upload/ 
    

### Enable the plugin:
To enable the plugin you have to edit your `.zshrc` and add `aws-upload` to the plugins.

    # vim ~/.zshrc 
    plugins=(history tmuxinator aws-upload)

After you seave your changes on `.zshrc` you can restart or reload `zsh`.
                                
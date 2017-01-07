---
layout: post
title:  "My Mac clean-install Guide"
date:   2017-01-07
comments: true
---

After 5+ years it was time for me to get a new MacBook Pro. While it's the easiest way to migrate my old stuff from a TimeMachine backup, I think it's great opportunity to start over from scratch. Furthermore I used this occasion to keep track of all the steps I would do in order to setup my new Mac. 

With this post I primarily want to document my steps for my future-me so I'll have my own personal guide for doing a clean install. I might even do a yearly clean install - not sure yet. On the other hand I'm putting it out here for anybody who is interested in it. I'll be happy to receive you're feedback if you picked something up from this post.  


## First steps 

### copy `~/.ssh` directory 

SSH keys are crucial for a lot of logins to servers and services such as GitHub or Bitbucket. 

As off macOS Sierra we need to add the ssh key to the ssh-agent. By adding the password to the Keychain you don't need to do this after reboot. See [here](http://apple.stackexchange.com/a/250572) or [here](http://unix.stackexchange.com/a/140077) for details. 

Run `ssh-add -K ~/.ssh/id_rsa` and enter the certificate's password. 


## Installing Apps & Command Line Tools

To install all Applications and Command Line Tools I'm using [Homebrew](http://brew.sh) in combination with this [Bundler](https://github.com/Homebrew/homebrew-bundle). While the Bundler was designed to define and install dependencies for a software project, it can also be misused to define a list of Applications and Command Line Tools to be installed on a fresh Mac. [Homebrew-Cask](https://github.com/caskroom/homebrew-cask) allows to install Mac Applications and with the [`mas`](https://github.com/mas-cli/mas) CLI this setup even works with Mac App Store Apps. 

**Thanks to [@hukl](https://twitter.com/hukl) for introducing this idea of misusing a Brewfile on this [Freakshow Podcast Episode 🇩🇪](https://freakshow.fm/fs174-legacy-keystroke-importer#t=2:37:54.106).**

Since I did not want to install **all** apps and tools I have on my old Mac I started with a clean Brewfile living in my users home directory. Whenever I notice a missing app or tool I first added it to the Brewfile and then installed it by running `brew bundle -v`. 

I have created a [gist](https://gist.github.com/martnst/ed66ff9f5ac73878254ab4b2ff470462) which holds my master `Brewfile`, so I can fetch it on any new Mac. 

**So finally on a fresh macOS installing all apps and tools requires only a few steps:**

1. Restore / setup my ssh keys (see above)
2. Install Homebrew
3. Clone (or download) the `Brewfile 
4. Run `brew bundle -v`

### Additional installations: 

Unfortunately some installations still need to be done manually: 

#### 1Password:

- Safarie extension: <https://agilebits.com/onepassword/extensions>

#### rvm 
rvm is not available through homebrew, hence I had to install it manually from <https://rvm.io>.

#### Bundler (Ruby)
run `gem install bundler`, optionally check <http://bundler.io> for details

#### Oh-My-Zsh
follow install instructions here: <http://ohmyz.sh>


## Restoring App's preferences 

Next I am putting down a list how to restore the preferences / states of the Apps. For the majority it's only a matter of coping directories from my old Mac / TimeMachine Backup. 

**Apps marked with the ⚠️ require steps before a clean install.**

#### 1Password ⚠️ 
setup sync from old mac / installation

#### Alfred ⚠️ 
setup sync via Dropbox: <https://www.alfredapp.com/help/advanced/sync/>

#### Dock 
As of the Dock I want to have the same order and apps as on my Mac before. Luckily that's rather easy once you know the file you need to restore. 

- Copy `~/Library/Preferences/com.apple.dock.plist`
- Run `killall -9 Dock`

#### Mail 

Since I could not find a way to restore Mail from the TM Backup on macOS Sierra I ended up having to reconfigure all accounts. 

- Copy `~/Library/Mail` 
- Copy `Containers/com.apple.mail/Data/Library/Preferences/com.apple.mail.plist`

Check [here](https://www.macissues.com/2014/12/07/how-to-manually-restore-your-mail-folder-from-time-machine/) for more details on how to manually restore your Mail folder from Time Machine backup.




#### Outbank
restore `~/Library/Containers/com.stoegerit.outbank.osx`

#### Sequel Pro
restore `~/Library/Application\ Support/Sequel\ Pro`

#### Slack
restore all logins by copying `~/Library/Containers/com.tinyspeck.slackmacgap`

#### Terminal
Restore my custom Theme / Profile called *Cinery*:
    
- install Source Code Pro Font: <https://github.com/adobe-fonts/source-code-pro>
- get Cinery Terminal Profile form old installation


## Entering Software Licenses

⚠️ So far I am not aware of a way to automate re-entering my software keys. Please drop a comment if you have any ideas. 

## Copying files from Time Machine Backup 

Next to installing apps and restoring their preferences copying my user data files is a main taks after a clean install. Below I have listed folders and files I need to copy from my Time Machine backup. You may find some commons that would also apply to you. 

- `~/.ssh`
- `~/.gitconfig`
- `~/.gitignore_global`
- `~/Documents`
- `~/Pictures`
- `~/Music`
- `~/Projects`

## Sync Keychain

*todo…*


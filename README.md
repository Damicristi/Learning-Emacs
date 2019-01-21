# Emacs | Preserving my own emacs information

[![Damodar's emacs view](https://raw.githubusercontent.com/Damicristi/All-about-Emacs-and-Linux/master/My%20emacs%20Config/emacs.png)](https://physicslog.com "Visit my blog")

- No pdf view in emacs -nw. But works perfectly fine in emacs gui. pdf-tools won't work in emacs -nw i.e. emacs in terminal mode. But you can do view it as text form by doing this M-x doc-view-mode. 


# Linux | Preserving linux information

- Fix Various Update Errors In Ubuntu 
```
sudo rm -r /var/lib/apt/lists/*
sudo apt-get clean && sudo apt-get update
```

- Make a folder writable
```
sudo chmod 777 directory_name
```

- To kill local server
```
ps -fA | grep python
kill -9 pid
```

- To edit grub permanantly 
```
sudo nano etc/default/grub
sudo update-grub
```

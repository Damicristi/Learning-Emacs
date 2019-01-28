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

# Python 3 | Preserving Python information
- Use constructor from Base(i.e. Parant) class in the Child class, along with child's constructor.
```
class a:
    def __init__(self,x):
        self.x = x
    
    def se(self,z):
        print(z*2)
        
class b(a):
    def __init__(self,x,y):
        self.y = y
        super().__init__(x)
```
We can use Base class methods(i.e. functions) by doing this:   
```
b(1,2).se(3)
```
We can call constructor of Parant class by doing this:
```
b(1,2).x
```
We can call constructor of Child class by doing this:
```
b(1,2).y
```

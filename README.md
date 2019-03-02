# Emacs

[![Damodar's emacs view](https://raw.githubusercontent.com/Damicristi/All-about-Emacs-and-Linux/master/My%20emacs%20Config/emacs.png)](https://physicslog.com "Visit my blog")

- No pdf view in emacs -nw. But works perfectly fine in emacs gui. pdf-tools won't work in emacs -nw i.e. emacs in terminal mode. But you can do view it as text form by doing this M-x doc-view-mode. 


# Linux

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

- To solve readable usb
```
$ lsblk
$ sudo -i
$ umount /dev/sdb1
$ mkfs.vfat /dev/sdb1
```

# Python 3

- Use constructor from Base(i.e. Parant) class in the Child class, along with child's constructor.
```
class a:
    def __init__(self,x):
        self.x = x    
    def se(self,z):
        print(z*2)
```
```
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

- Merging two dictionaries in Python 3.x

```
d1 = {"a":1, "b":2}
d2 = {"c":3, "d":4}
d1Ud2 = {**d1, **d2}
>>> d1Ud2
{"a":1, "b":2, "c":3, "d":4}
```

- Circular Dependencies

I strongly suggest to see "<a href="https://stackoverflow.com/questions/48093653/nameerror-while-calling-the-parent-class-method-from-another-module">NameError while calling the parent class method from another module</a>" for more details.

- Install package from github
```
pip install git+https://github.com/titipata/arxivpy
```

# Wordpress

- Over riding the comments count by Disqus count in wordpress site
```
<a href="<?php the_permalink() ?>#disqus_thread">Comments</a>
```

- Dynamic copyright date
```
&copy; 2017 – <?php echo date('Y'); ?> PhysicsLog.com
```

- Updating or installing plugin/theme got "to perform the requested action wordpress needs to access your web server. please enter your ftp". Usually get when you install wordpress in localhost or server.
```
$ sudo chown www-data:www-data /var/www/html/YourWordpressFolder -R
$ sudo systemctl reload YourWebServer
```

- Enable curl php in Ubuntu
```
$ sudo apt-get install php-curl
$ sudo service apache2 restart
```

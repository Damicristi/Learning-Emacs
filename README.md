# Emacs

[![Damodar's emacs view](https://raw.githubusercontent.com/Damicristi/All-about-Emacs-and-Linux/master/My%20emacs%20Config/emacs.png)](https://physicslog.com "Visit my blog")

- No pdf view in emacs -nw. But works perfectly fine in emacs gui. pdf-tools won't work in emacs -nw i.e. emacs in terminal mode. But you can do view it as text form by doing this M-x doc-view-mode. 

# LaTeX

- Beamer Tutorial at [here!](https://commands.physicslog.com/latex/beamertutorialkwuensch.pdf)

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

- Function annotation 
This allows us to attach metadata to functions describing their parameters and return values. Read at [PEP 3107](https://www.python.org/dev/peps/pep-3107/)
For example:
```
>>> def kinetic_energy(m:'in KG', v:'in M/S')->'Joules': 
        return 1/2*m*v**2
>>> kinetic_energy.__annotations__
{'return': 'Joules', 'v': 'in M/S', 'm': 'in KG'}
>>> '{:,} {}'.format(kinetic_energy(20,3000), kinetic_energy.__annotations__['return'])
'90,000,000.0 Joules'
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

# Google Collab

- Accessing file from Google drive
```
from google.colab import drive
drive.mount('/content/drive')
```

- View LaTeX in notebook
```
from IPython.display import Math, HTML
display(HTML("<script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.3/"
               "latest.js?config=default'></script>"))
Math(r'F(k) = \int_{-\infty}^{\infty} f(x) e^{2\pi i k} dx')
```

- Install LaTeX
```
!sudo apt-get update
!sudo apt-get install texlive-full
!sudo apt install texlive-latex-base 
!sudo apt install texlive-fonts-extra
```


- Install [Manim](http://github.com/3b1b/manim/)

1. Install latex

2. Install cairo, latex, ffmpeg, and sox by doing these:
```
!sudo apt-get install ffmpeg
!sudo apt-get install sox
!sudo apt-get install libcairo2-dev libjpeg-dev libgif-dev python3-dev libffi-dev
!python3 -m pip install pyreadline
!python3 -m pip install pydub
!python3 -m pip install pycairo
!pip install -r requirements.txt
```

3. Clone Manim library
```
!git clone https://github.com/3b1b/manim.git
```

4. Checking!
```
!cd manim
!python3 -m manim example_scenes.py SquareToCircle -pl
!python3 -m manim example_scenes.py OpeningManimExample -pl
```
Any issues see this [Manim Tutorial](https://talkingphysics.wordpress.com).

- Writing python file from Google collab notebook
```
%%writefile filename.py
# Write your python code below
print("Visit PhysicsLog.com")
```

- Viewing the working directory
```
!ls
filename.py
```

- Accessing and run python file
```
!python3 filename.py
```

# Emacs

- No pdf view in emacs -nw. But works perfectly fine in emacs gui. pdf-tools won't work in emacs -nw i.e. emacs in terminal mode. But you can do view it as text form by doing this M-x doc-view-mode. 

# LaTeX

- Beamer Tutorial at [here!](https://commands.physicslog.com/latex/beamertutorialkwuensch.pdf)

# Linux

- [How to remove Ubuntu 16.04 LTS or even earlier version completely?](https://www.physicslog.com/archive-post#remove_ubuntu)

- [How to uninstall MATLAB in Ubuntu or other Linux distros?](https://www.physicslog.com/archive-post#uninstall_matlab)

- [Mouse cursor moves slowly while copying a large file to USB](https://www.physicslog.com/archive-post/#mouse_cursor)

- Lock/Unlock root login

It's better to lock/disable (-l) root login for security purpose in (Arch) Linux. You can do it by:
```
$ sudo passwd -l root
```

To unlock/enable (-u) root login:
```
$ sudo passwd -u root
```

- Fix Various Update Errors In Ubuntu 
```
sudo rm -r /var/lib/apt/lists/*
sudo apt-get clean && sudo apt-get update
```

- Make Bootable pendrive from Linux Terminal
```
sudo dd if=archlinux-2019.08.01-x86_64.iso of=/dev/sdX
```
where sdX is the pendrive partition.

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

- Linux partition (or file system) went to read only mode
```
$ fsck.ext4 /dev/sdaX
```
where X represent the partition number. For me, it was 6. This is usually occurs due to OS crash.

- To change shell from bash to zsh
```
chsh -s $(which zsh)
```

- Download all the folder and files from archive URL using wget
```
wget -m http://archive.ics.uci.edu/ml/machine-learning-databases/
```

- If your (Arch) Linux machine needs mount per login (after power ON your machine) then to solve it, follow this:

1. Create a directory name data in mount path, by doing this:
```
$ sudo mkdir /mnt/data
```

2. Change the permission to drwxrw-rw-, by doing this: 
```
$ sudo chmod 766 /mnt/data
```

3. Change the owner, by doing this:
```
$ sudo chown $USER:$USER /mnt/data
```

4. Mount your desire Linux partition (/dev/sdXY) to mount path (/mnt/data), by doing this:
```
$ sudo mount /dev/sda3 /mnt/data
```

If you do not know which to mount then, to list partitions, you  either use fdisk or cfdisk. For most of the purpose cfdisk is flexible but for now, we use fdisk as:
```
$ sudo fdisk -l
```

5. We will edit fstab where it stores information of which partition to mount during login. Before that, we need to back up fstab file as:
```
$ sudo cp /etc/fstab /etc/fstab.backup
```

Now, find the UUID for sda3 by doing:
```
$ sudo blkid
```

Then, edit fstab by doing:
```
$ sudo nano /etc/fstab
```

In /etc/fstab file, we will add the following line:
```
UUID=your-sdXY-UUID-name /mnt/data add-partition-type relatime 0 2 
```

For example:
```
UUID=defec4d7-3e36-4938-b5de-b2016b2dee27 /mnt/data ntfs relatime 0 2 
```

6. Remount with new fstab, by doing:
```
$ sudo mount -a
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

# TensorFlow

- Installation of Tensorflow using anaconda/Minianconda

It is better to create virtual environment to play with tensorflow because it needs specific python version/packages. Use cmd in windows. I found that powershell won't work using activate tf.
```
conda create -n tf tensorflow
activate tf
deactivate
```

- Install packages in virtual environment (for example: tf)
```
conda install -n tf PackageName
```

- To see the list of virtual environments
```
conda env list
```

Or, you can also use
```
conda info --envs
```

- To delete virtual environment
```
conda env remove -n tf
```

# Installing Miniconda/Anaconda

- To install Miniconda/Anaconda

Download it from its website then, in ubuntu
```
bash FILENAME.sh
```

- To use Python in zsh 
```
conda update conda
conda init zsh
```

- To activate conda without showing (base)>
```
conda activate
```

or,
```
conda config --set changeps1 False
```


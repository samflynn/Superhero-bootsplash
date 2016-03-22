# Superhero-bootsplash

A cool Superhero-style plymouth bootsplash for Ubuntu.

Installation Instructions

The theme can be easily installed by running the `install.sh` file. Alternatively it can be done manually too by using the following commands.

#####Manual installation
---

* make a directory in plymouth directory as stated below where the theme will be stored 
`mkdir /lib/plymouth/themes/my-theme`

* copy the directory holding the theme files to the new place 
* `cp --recursive /path/to/my-theme /lib/plymouth/themes/my-theme`

* set it as default boot splash theme 
`sudo ln -sf /lib/plymouth/themes/my-theme/my-theme.plymouth /etc/alternatives/default.plymouth`

In order to get back to the system default theme: `sudo update-alternatives --config default.plymouth` and select the default theme you want, then `sudo update-initramfs -u`

#####Previewing the theme
---

Simply run the  `preview.sh` file. It will install `plymouth-x11` if required. Then follow the instructions.

###[GIF](http://www.shortlist.com/resource/binary/e461d9b8eee234af131d4339662991c9/comiccharcters480.gif)

#####There will be some negligible lag
You can either decrease the frames or run the following [optimizations](http://www.shortlist.com/resource/binary/e461d9b8eee234af131d4339662991c9/comiccharcters480.gif):

>To fix it for Nvidia/ATI Cards:
>Open Terminal (Press Ctrl+Alt+T)and enter the following commands:
>The easiest way to fix ugly plymouth theme fter installing nvidia drivers is to open terminal and type:
>sudo gedit /etc/default/grub
>Look for the line :
>#GRUB_GFXMODE=640x480
>Just underneath write the line :
>GRUB_GFXPAYLOAD_LINUX=auto
>If this does not fix your problem replace "GRUB_GFXPAYLOAD_LINUX=auto" with:
>GRUB_GFXPAYLOAD_LINUX="1024x768"
>then update grub with this command line:
>sudo update-grub
>reboot and your fine.


<b> Thanks to [Shobhit](https://github.com/skd1993) for the install.sh, preview.sh and some help with the script code. 
Check out his [NSA-Bootsplash](https://github.com/skd1993/nsa-plymouth).
</b>



# License

Copyright (c) 2016 SHREY Permission is hereby granted, free of charge, to any person obtaining copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

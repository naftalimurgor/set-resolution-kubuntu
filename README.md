# set-resolution-kubuntu
Follow through this main Ubuntu issue thread for further pointers: https://askubuntu.com/questions/1505707/ubuntu-resolution-stuck-at-1024x768

Set your desired resolution and other config options as per your display name. 
1. create a new mode:

   ```sh
   cvt 1366 768 60
   ```
   This command generates a Modeline for a 1366*768 resolution at 60Hz.

   Once you have that, copy the output starting from "Modeline" (excluding the word "Modeline") up to the end.

   2. add new mode to `xrandr`:
      
      ```sh
      xrandr --newmode <paste the modeline here>
      ```
  
   4. Add this new mode to your display:
      
      ```sh
      xrandr --addmode <your display name> 1366x768_60.00
      ```
   5. Lastly set this new mode to your display:
      ```sh
      xrandr --output <your display name> --mode 1366x768_60.00
      ```
   Display name can be obtained by running `xrandr` from the terminal.
## Note

The `xrandr` changes for some reason are not permanent and are lost on reboot. Open a PR to add persistence to `xrandr` changes.

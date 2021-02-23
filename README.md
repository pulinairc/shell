# Pulina-shell

Selection of shell scripts.

#### Cron

``` bash
*/55 * * * * curl -s 'wttr.in/{Helsinki,Jyvaskyla}?format=3' > /home/rolle/shell/weather >/dev/null 2>&1
```

#### Figlet

``` bash
figlet -f /home/rolle/.local/share/fonts/Univers.flf "#pulina█" > pulinabanner
``` 

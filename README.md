### Guideline for quick start the v2ray on XiaoMi Router

The script is refer this guideline https://github.com/bryan-lai/FQ


#### Quick Start
Update the `V2RAY_PATH` and the `V2RAY_PATH_SCRIPT` in `script/start.sh`
```
#!/bin/sh
# author: pengjianqing@gmail.com
# date: 2020/3/30

V2RAY_PATH="/userdisk/data/v2ray_new"
V2RAY_PATH_SCRIPT="/userdisk/data/v2ray_new/script"
```

And update your v2ray json
```
vim script/v2ray_mirouter.json
```

Then Start it

```
sh script/start.sh
```

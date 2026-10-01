# 快速开始游戏（管理员）
## 快速加入（自己）
### 通常情况
#### 基本用法

其中 [] 为可选内容，<>为必选内容

```
/function [minecraft:]<游戏id>/join
```
例如：

小游戏派对：`/function small_games/total/join`

#### 游戏ID
删除线为正在制作或者已被删除。
|游戏名|ID|
|:----:|:----:|
|Battle Box|battle|
|信仰方块|believer|
|~~冰船~~|boat|
|~~赛车~~|car_race|
|色盲大战|color|
|星跳水立方|dropper|
|战桥|duel|
|~~高尔夫~~|golf|
|躲猫猫（道具）|hide2|
|躲猫猫（动物）|hideseek|
|烫手的山芋|hotpotever|
|饥饿游戏|hunger|
|职业战争|job_pvp|
|密室杀手|killerever|
|Live Longest|live|
|关卡跑酷|lpark|
|冬泳怪鸽|poolwar|
|五子棋|small_games/chess|
|小游戏派对|small_games/total|
|桌游类|desk|
|Snow|snow|
|TNT Wars|tntwars|
|狼人杀|twolf|
|Zombie Days（PVE）|zombieever|
|云端争霸（Cloudwars）|cloud|
|Boatwars|boatwars|

### 例外
1. 生存游戏：
   ```
   /function surgame:join
   ```

2. 起床战争
   ```
   /function bedwars/message/join
   ```

## 返回大厅
命令：`/trigger hub`（全局，所有玩家可用）

或者
## 旁观者
### 命令
菜单：`/trigger spec`（全局，所有玩家可用）
### 小注
部分游戏~~不支持~~（有些可能忘写逻辑了，有些可能有BUG，发现这些请提交 Issue 或者反馈到 QQ 群）。
### 明确不支持
跑酷、迷宫

## 让其他玩家加入
可以调用 `execute`

语法为：
```
/execute as <玩家名称> run <加入命令（删掉最前面的“/”）>
```

例如：

小游戏派对

```
/execute as @a run function small_games/total/join
```

## 组队
给指定玩家打开组队菜单（对话框）：
```
/function team/open
```
或者
```
/execute as <玩家名称> run function team/open
```

玩家自己也可以用 `/trigger team`（所有玩家可用，无需 OP）。

组队规则：多人游戏只有队长能进入，队长进入后会自动把队员一起拉进游戏；单人游戏不受限制。

（`/trigger team set 2/3/4/5/6/7/8/9/10/11` 依次是 接受邀请 / 拒绝邀请 / 邀请玩家 / 队伍信息 / 退出队伍 / 转移队长 / 删除队伍 / 确认删除 / 忽略邀请 / 召集队员回大厅）

队长召集：队长本人处于大厅时，菜单里会出现金色按钮「召集队员回大厅」（等价于 `/trigger team set 11`）。
它相当于代每个**不在大厅**的队员执行一次 `/trigger hub`，所以正在游戏中的队员也会被叫回来；队员会先收到一句
“队长 xxx 召集全队回大厅”的提示，队长会看到这次召集了几个人。队长自己不在大厅（例如已经在某个游戏或其等待区）时，
按钮不显示、直接执行也会提示先用 `/trigger hub` 回大厅。

邀请有效期 **60 秒**：过期后点"接受"会提示已过期，打开组队菜单时也会自动清掉过期邀请。
"拒绝"会让邀请者收到提示，"忽略"是静默清除（邀请者不会收到任何提示）。

过期邀请由 `minecraft:team/sweep` 回收：它每秒被调用一次，但内部按 `team.sweep` 分频，**每 10 秒才真正清理一轮**
（遍历邀请键索引 `invite_keys`）。所以"邀请过期后邀请者最多晚 10 秒才收到通知"是正常的；被邀请者点"接受"时会立即
按过期时间判断，不受这个延迟影响。因为按索引清理，`park.uuid` 变动（重进 / 重置）留下的孤儿邀请也会被一并回收。

### 无效队伍自动清理

不用管理员手动删，组队系统自己会把“没意义的队伍”收掉：

- **全员离线 → 自动删除**（每 30 秒检查一轮，分频计数器 `team.sweep.dead`）：队伍里所有成员都不在线时，
  队伍记录会被删除，成员状态也按名册名字一并清掉（离线玩家回来时就是“没队伍”的干净状态）。在线管理员
  （`map.op`）会收到一条“队伍 #N 全员离线，已自动清理”的提示。
- **回到大厅时检查**（登录进图 / `/trigger hub` 回大厅 / 退出游戏回大厅，三个时机会各查一遍，钩在
  `minecraft:team/api/on_lobby_enter`）：
  - 队伍记录已经不存在、或自己的身份不是队长/队员 → 重置自己的组队状态并提示（脏数据自愈）；
  - 自己是队长、名册里还有别的成员、但他们全都不在线 → 自动解散这支无效队伍并提示队长。
    名册里**只有队长一人**时不会删 —— 那通常是刚建好队、邀请还没被接受，删了会把待处理的邀请一起搞没。
- **重新加入游戏时清空自己的邀请记录**（`leave=1..`，钩在 `lobby_enter` 的 leave 分支，函数是
  `minecraft:team/api/clear_invites_self`）：删掉"别人发给我的邀请"（键 = 自己的 `park.uuid`）和
  "我发出去的邀请"（记录里的 `from` 等于自己的名字）；只清邀请、不动队伍关系，清掉过东西才会提示一句。
  邀请键索引里残留的项由 10 秒一轮的邀请清理自动剔除。

- **有人退出/被移出后只剩一名成员 → 自动解散**（`minecraft:team/lib/check_survivor`，接在队员退出、
  队长移出成员、队长退出移交之后）：名册只剩 1 人就没有存在的意义，直接解散并通知剩下那个人。

### 管理员（`/function admin/main`）

管理员菜单里有两项：

- **组队功能** `[启用(默认)]` / `[禁用]`（`/function admin/team/on`、`/function admin/team/off`）：
  禁用后玩家敲 `/trigger team` 只会收到"组队功能已被管理员禁用"的提示（所有组队触发器都会被拦下），
  多人游戏也不再限制"仅队长可进入 / 队长自动拉人"。**已有的队伍会保留**（不会自动解散），需要的话用下面的
  队伍管理删除。禁用开关存在 `team.disabled board`（1 = 禁用），`clear_cache` 不会改它。
- **队伍管理** `[打开]`（= `/function minecraft:team/api/admin_list`）：列出所有队伍（编号 #id、队长名、成员数），
  点某一行末尾的 `[删除]` 删掉那一支，或点 `[删除全部队伍]` 走确认对话框后一次清空（同时作废所有待处理邀请）。

也可以直接用命令：

```
/function minecraft:team/api/admin_list            # 列出所有队伍（带删除按钮）
/function minecraft:team/api/disband_one {tid:2}   # 删除编号 #2 的队伍
/function minecraft:team/api/disband_all           # 删除全部队伍 + 作废所有邀请（没有确认框；菜单里那项有确认框）
```

被删除队伍的成员（含离线成员）都会被移出队伍，在线成员会收到"队伍已被管理员解散"的提示；队长自己删除时提示语仍是
"队伍已被队长解散"。`/function minecraft:team/api/clear_cache` 则是更彻底的清缓存（连 `team.id` / `team.role` 与
编号计数器一起重置），一般只在出现脏数据时用。

### 分队时同队优先（起床战争 / 烽火燎原）

这两个游戏开局分队伍时会把同一个组队尽量放进同一队：

- 目标队伍的空位数够放下整个组队 → **整队分进同一队**；
- 放不下（人数不够 / 放进去会让各队人数不平均）→ **退回逐人随机分配**，并给当事人一句提示。
- 每队人数上限按"开局总人数 ÷ 队伍数（向上取整）"算，所以"同队优先"不会让任何一队超出上限，人数依旧均匀；
  如果某个组队比这个上限还大（例如 4 队 6 人里的 3 人队伍），它必然会被拆开，这正是规则里说的"不均匀就随机"。
- 分配时优先给"整队放得下"的组队整队成队，散人后分；否则组队抽到得晚、队伍已被散人占满时，明明放得下也会被拆开。
- 实现放在 `minecraft:team/api/party_pick`（选批）+ `minecraft:team/lib/party_ok`（判断整队放不放得下）。
  游戏侧调用方式（宏只需一个 `sel` 键，空位数放 `team.room`）：

```
scoreboard players operation team.room board = <目标队空位数>
data modify storage minecraft:team_tmp squad set value {sel:"@a[team=bw.wait,tag=!GLOBAL.SPEC]"}
function minecraft:team/api/party_pick with storage minecraft:team_tmp squad
team join <目标队> @a[tag=team.batch]
tag @a[tag=team.batch] remove team.batch
```

注意：`team.room` 要按**开局总人数**算出的每队上限来给（不能按剩余待分配人数递减），否则上限会一路缩水、组队被误拆。
起床战争在 `bedwars/resets/resetover.mcfunction` 里先算好 `team.cap`，烽火燎原在 `blaze/before/random_team.mcfunction` 里算好 `blaze.wait.perteammax`。

### 测试（含 Carpet 假人）
假人没有客户端，无法自己敲 `/trigger`，用下面这个函数代它执行同样的操作：

```
/function minecraft:team/api/trigger {player:"<玩家名>",obj:"team",value:2}
```

取值（`obj` = 计分板）：`obj:"team"` 时 `value` 用 `1` 主菜单、`2` 接受邀请、`3` 拒绝邀请、`4` 邀请列表、`5` 队伍信息、
`6` 退出队伍、`7` 转移队长、`8` 删除确认框、`9` 确认删除、`10` 忽略邀请、`11` 召集队员回大厅。

对话框里"点某一行"用的是各自独立的触发计分板，行值不用大区间偏移（不会和操作编号 `1..11` 撞区间，队伍上百人、
`park.uuid` 变大都没问题）：

```
/function minecraft:team/api/trigger {player:"<玩家名>",obj:"team.pick.invite",value:<对方 park.uuid>}
/function minecraft:team/api/trigger {player:"<玩家名>",obj:"team.pick.kick",value:<名册索引 + 1>}
/function minecraft:team/api/trigger {player:"<玩家名>",obj:"team.pick.transfer",value:<名册索引 + 1>}
```

注意 kick / transfer 的行值是**名册索引 + 1**：`scoreboard players enable` 会给每个玩家在这两个计分板上建一个 `0` 分，
所以把 `0` 留作"没有待处理的行点击"，用 `0` 当有效行值会导致每 tick 误触发（非队长就会不断收到"只有队长…"的提示）。

不想打开邀请列表，直接按名字发邀请：
```
/execute as <邀请者> run function minecraft:team/api/invite_by_name {target:"<玩家名>"}
```

管理员强制把某位玩家塞进队伍 / 踢出队伍（按名字操作，不需要对话框，适合假人）：
```
/function minecraft:team/api/force_join {player:"<玩家名>",tid:0}
/function minecraft:team/api/force_leave {player:"<玩家名>"}
```
其中 `tid:0` 表示加进你自己的队伍，`tid:3` 表示加进 3 号队伍；对方已在别的队伍时会先把他退出来再加。

测试完想一键重置（解散所有队伍、作废所有邀请、清掉所有人的队伍计分项）：
```
/function minecraft:team/api/clear_cache
```

假人要被队长"自动拉进游戏"，需要让它处于大厅状态（游戏内按 `@a[team=lobby]` 判断是否在大厅）：
```
team join lobby <玩家名>
```

验证名字解析（结果会广播，方便查看假人是否可被解析）：
```
/execute as <玩家名> run function minecraft:team/debug/name_test
```
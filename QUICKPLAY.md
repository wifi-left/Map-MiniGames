# 快速开始游戏（管理员）
## 快速加入（自己）
### 通常情况
#### 基本用法

其中 [] 为可选内容，<>为必选内容

```
/function [minecraft:]<游戏id>/join
```
例如：

小游戏合集：`/function small_games/total/join`

#### 游戏ID
删除线为正在制作或者已被删除。
|游戏名|ID|
|:----:|:----:|
|Battle Box|battle|
|信仰方块|believer|
|冰船|boat|
|赛车|car_race|
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
|小游戏合集|small_games/total|
|Snow|snow|
|TNT Wars|tntwars|
|狼人杀|twolf|
|Zombie Days（PVE）|zombieever|

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

小游戏合集

```
/execute as @a run function small_games/total/join
```
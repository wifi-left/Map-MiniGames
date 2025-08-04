# wifi-left's MiniGames
如果您想要使用此地图，请遵守：
1. 请不要删除任何原作者信息
2. 如果进行修改请添加明显提示
3. 不可商用

> 更多许可证内容请查看本地图许可证 [LISENCE (CC BY-NC-SA 4.0) 并附带额外许可协议](LISENCE)

# 重要提示
## 前言
由于地图是由比较纯净的**Fabric 客户端**制作，理论上**原版**、**Fabric**、**Spigot**均能正常工作

## 不支持的服务端
**但是**，以下服务端很可能出现问题，所以我们**不支持**以下服务端：
1. Paper：由于Paper各种“优化”导致原版功能被砍许多，而地图用了这些特性（无意中使用，而且很多都不算是BUG）。如果您想在Paper上使用这张地图，您可以看看本地图的第三方分支项目：[Minecraft-Minigames-Map by FallenCrystal](https://github.com/FallenCrystal/Minecraft-Minigames-Map)。这位作者尝试进行了对Spigot等插件端的支持。**但请注意**，这些第三方分支并不一定是最新的地图的修改版。
2. Folia：破坏了原版命令系统
3. 任何破坏原版命令、修改原版行为的服务端：本地图基于原版命令系统以及原版行为。
4. Forge：可能会出现各种BUG，原因未知。请尝试使用Neoforged代替Forge。
## 模组兼容性
如果您使用模组端，请一定阅读以下内容。
### 不支持的模组
暂未发现，欢迎补充。

## 插件兼容性
如果您使用插件端，请一定阅读以下内容。
### 不兼容的插件（包括代理端（Velocity、bungeecord中的插件））
> 感谢 [FallenCrystal](https://github.com/FallenCrystal/Minecraft-Minigames-Map/)
- EssentialsX, CMI
- CombatLogX
- 任何修改计分板的插件, 除了TAB。关于TAB插件，请**一定阅读**[Tab 插件兼容性](https://github.com/FallenCrystal/Minecraft-Minigames-Map/blob/1-21-4-lts/docs/tab-compatibility.md)
- Multiverse-Core, BKCommonLib
- 任何隐身插件 (如SuperVanish)

### 建议安装的插件:
- LuckPerms : 如果您正在运行中大型服务器, 这是必不可缺的. 除了您的插件需要获取权限以外, 禁用原版OP权限也可以避免您的管理员拥有您不希望他们拥有的权限, 一定程度上也可以避免无下限的滥用.
- AntiPopup : 在您的服务器上禁用烦人的聊天报告, 并阻止"不安全的聊天"弹窗弹出.

## 某些服务端的特殊设置
1. 如果您使用Spigot，建议您打开在线模式。Spigot离线模式会导致部分玩家无法进入（Spigot会把玩家队伍前缀当成玩家名，而这些前缀包含了特殊符号“|”等不应该出现在路径中的文本）
2. 如果您使用插件端，请**不要**使用**任何破坏原版命令、修改原版行为**的插件
3. 如果您使用模组端（如Fabric、Forge），请**不要**使用**任何破坏原版命令、修改原版行为**以及**让Clone、Fill等异步进行**的模组（地图重置需要这些命令处于非异步状态进行）

## 建议的服务端以及模组等
### 服务端
建议您使用和地图开发环境相同的 [Fabric 服务端](https://fabricmc.net/use/server/)

### 模组
1. [Fabric API](https://modrinth.com/mod/fabric-api)：基础库（可选）
2. [Carpet](https://modrinth.com/mod/carpet)：提供TPS、MSPT显示以及部分优化（可选）
3. [Speech Manager by Command 'scoreboard'](https://modrinth.com/mod/speech-manager-by-command-scoreboard)：提供本地图的小游戏禁言、分区聊天功能（可选）

# 快速开始、强制进入游戏（管理员）
详见 [QUICKPLAY.md](QUICKPLAY.md)

# 反馈BUG
请在 GitHub Issue 或者qq群里反馈

# 关于对于部分插件的支持
我尝试支持了 `ViaVersion` 以及 `Geyser` 模组。

但请不要对其抱有太大期待。很可能大部分游戏无法正常游玩。

# 资源包的使用
您可以在服务器配置资源包的 GitHub / Gitea 直链达到自动下载资源包。

Gitea 下载速度更快。

Gitea 的 URL 为：[https://gitea.com/wifi-left/Map-MiniGames/raw/branch/master/resourcepack/MiniGameRes.zip](https://gitea.com/wifi-left/Map-MiniGames/raw/branch/master/resourcepack/MiniGameRes.zip)

GitHub 的 URL 为：[https://github.com/wifi-left/Map-MiniGames/raw/master/resourcepack/MiniGameRes.zip](https://github.com/wifi-left/Map-MiniGames/raw/master/resourcepack/MiniGameRes.zip)

# 服务端安装教程
1. [教程 - 服务器建设 - Minecraft Wiki](https://zh.minecraft.wiki/w/%E6%95%99%E7%A8%8B#%E6%9C%8D%E5%8A%A1%E5%99%A8%E8%AE%BE%E7%BD%AE)

请参考上述教程。

# 感谢列表
排名不分先后

- 感谢 Domnick_JYH 提供的大量帮助
- 感谢 00ɹɐəlϽ 提供的战利品表设计
- 感谢 616789 提供的大量帮助
- 感谢 lawyer112 提供的服务器支持
- 感谢 LateTea 提供的支持
- 感谢 Wemsur 进行的测试、反馈
- 感谢 残月sama 提供的支持
- 感谢 群友、地图使用者 的支持
- 感谢 Akita丶 有偿提供的建筑
  >
  > 如果您有需要建筑地图的可以与他（Akita丶）联系。
  > 
  > MineBBS链接地址：[https://www.minebbs.com/threads/1-12-1-20-4-rpg-pvp.30597/](https://www.minebbs.com/threads/1-12-1-20-4-rpg-pvp.30597/)
  >
  > 不保证该第三方作者的质量，如果出现问题请双方自行解决。
  >
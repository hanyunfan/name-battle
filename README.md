# ⚔️ 名字大战 - Name Battle

**Whose name is stronger? 谁的招式更强？**

一个基于名字 SHA256 哈希值生成随机招式和伤害的对战小游戏。

[中文说明](#中文) | [English](#english)

---

## 中文

### 游戏规则

#### 1v1 对决模式
- 输入两个名字开始对战
- 基于名字的 SHA256 哈希值生成随机数作为伤害
- 每回合（1秒）双方同时出招，伤害值 1-99
- 每人有 500 HP，先归零者输
- **平局规则**：
  - 双方 HP 同时归零 → 平局
  - 战斗超过 15 回合 → 平局

#### 淘汰赛模式
- 支持 2-16 名选手参赛
- 自动生成对阵图
- **非2^n选手处理**：人数不足时，轮空选手自动晋级
- 每场比赛同样 500 HP，15回合平局规则
- 决赛出冠军

### 招式系统
- 255 种招式，中英文各一套
- 根据名字语言自动选择招式表
  - 中文名字 → 中文招式表
  - 英文名字 → 英文招式表
- 招式伤害越高，招式越厉害

### 伤害计算
```
伤害 = SHA256(名字)[随机位置] % 100
```
- 每回合从哈希值中取 1-2 位十六进制
- 转换为十进制作为伤害值（0-99，0时随机1-20）

### 默认选手
1v1 模式默认选手：
- 绝地武士
- 圣斗士星矢

---

## English

### Game Rules

#### 1v1 Duel Mode
- Enter two names to start battle
- Damage based on SHA256 hash of each player's name
- One round per second, damage 1-99
- Each player has 500 HP
- **Tie Rules**:
  - Both HP reach 0 simultaneously → Tie
  - Battle exceeds 15 rounds → Tie

#### Tournament Mode
- 2-16 players supported
- Automatic bracket generation
- **Non-power-of-2 handling**: Players without opponents auto-advance (BYE)
- Same rules: 500 HP, 15-round tie limit
- Champion wins the final!

### Move System
- 255 unique moves in Chinese and English
- Auto-selects based on name language
  - Chinese names → Chinese move table
  - English names → English move table
- Higher damage = more powerful moves

### Damage Calculation
```
Damage = SHA256(name)[random position] % 100
```
- Each round takes 1-2 hex digits from hash
- Converts to decimal as damage (0-99, 0 becomes 1-20 random)

### Default Players (1v1 Mode)
- Jedi Knight (绝地武士)
- Saint Seiya (圣斗士星矢)

---

## 技术特点 | Technical Features

- 🎨 霓虹风格暗色界面 / Neon-styled dark UI
- 🌐 中英文语言切换 / Chinese & English language toggle
- ⚔️ 实时战斗动画 / Real-time battle animation
- 🏆 淘汰赛对阵图 / Tournament bracket display
- 📜 详细战斗记录 / Detailed battle log
- 🎯 基于加密算法的公平随机 / Fair randomness via cryptographic hash

---

## 运行方式 | How to Play

直接用浏览器打开 `index.html` 即可开始游戏！

Just open `index.html` in your browser to play!

---

## 文件结构 | File Structure

```
name-battle/
├── index.html      # 游戏主页面 / Game page
├── moves-cn.csv    # 中文招式表备份 / Chinese moves backup
├── moves-en.csv    # 英文招式表备份 / English moves backup
├── README.md       # 本文件 / This file
├── SOUL.md         # 项目描述 / Project description
└── TRACKING.md     # 更新日志 / Changelog
```

---

**享受游戏！Enjoy the battle!** ⚔️
